#!/usr/bin/env bash
# Installs Hugo extended into /usr/local/bin inside the devcontainer.
# Version is pinned via the HUGO_VERSION env var (set in devcontainer.json).

set -euo pipefail

: "${HUGO_VERSION:?HUGO_VERSION must be set}"

ARCH="$(dpkg --print-architecture)"
case "$ARCH" in
  amd64) HUGO_ARCH="linux-amd64" ;;
  arm64) HUGO_ARCH="linux-arm64" ;;
  *) echo "Unsupported architecture: $ARCH" >&2; exit 1 ;;
esac

TARBALL="hugo_extended_${HUGO_VERSION}_${HUGO_ARCH}.tar.gz"
URL="https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${TARBALL}"

echo "Installing Hugo extended ${HUGO_VERSION} (${HUGO_ARCH})..."
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

curl -fsSL -o "${TMP}/${TARBALL}" "$URL"
tar -xzf "${TMP}/${TARBALL}" -C "$TMP" hugo
sudo install -m 0755 "${TMP}/hugo" /usr/local/bin/hugo

hugo version
