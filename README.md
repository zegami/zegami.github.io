# zegami.github.io

Source for [zegami.com](https://zegami.com) — a Hugo static site hosted on GitHub Pages.

Currently develops and previews at [https://zegami.github.io](https://zegami.github.io). DNS cutover from Squarespace is planned once the site is content-complete.

## Development

Open this repo in VS Code and reopen in the devcontainer (`Dev Containers: Reopen in Container`). The container installs Hugo extended automatically.

```sh
hugo server        # http://localhost:1313
```

### Editing content

All page copy lives in [`data/site.yaml`](data/site.yaml). Edit there — layouts read from it. The human-readable spec is in [`docs/content.md`](docs/content.md) and the visual spec in [`docs/design-brief.md`](docs/design-brief.md).

### Structure

```
.devcontainer/     Dev environment (Hugo extended pinned in devcontainer.json)
.github/workflows/ GitHub Pages deploy workflow
assets/css/        Stylesheet (processed by Hugo Pipes)
content/           Hugo content (minimal — landing page stub)
data/site.yaml     All page copy
docs/              Design brief and content spec
hugo.toml          Hugo site config
layouts/           Custom layouts and partials (no theme)
```

## Deployment

Pushes to `main` trigger [`.github/workflows/deploy.yml`](.github/workflows/deploy.yml), which builds with Hugo and publishes via the `github-pages` environment.

## Hugo version

Pinned in [`.devcontainer/devcontainer.json`](.devcontainer/devcontainer.json) and [`.github/workflows/deploy.yml`](.github/workflows/deploy.yml). Keep them in sync.
