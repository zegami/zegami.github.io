# zegami.com Design Brief

## Context
Product landing page for Zegami, a visual data exploration platform. Hugo static site, hosted on GitHub Pages. Must feel like it belongs with app.zegami.com (see screenshot).

## Colour Palette (extracted from app.zegami.com)
- **Background:** `#E8E0F0` — soft lavender-grey
- **Cards/surfaces:** `#FFFFFF` with subtle shadow
- **Nav bar:** `#FFFFFF` or very light, minimal
- **Primary accent:** `#7B5EA7` — muted purple (tags, buttons, links)
- **Text primary:** `#1A1A2E` — near-black
- **Text secondary:** `#555566` — grey
- **Tag/chip background:** `#7B5EA7` with white text, rounded pill shape
- **Gradient/hero area:** subtle purple-to-lavender gradient behind hero content

## Typography
- Clean sans-serif — the app uses a system/geometric sans. Use Inter or similar.
- Headings: bold, large, dark. No uppercase transforms.
- Body: 16px base, comfortable line height (~1.6)

## Layout
- Max content width ~1200px, centred
- Generous whitespace — the app is spacious, not cramped
- Cards: white, rounded corners (~8-12px), light box-shadow
- Sections alternate between full-width lavender background and white
- No heavy borders anywhere — separation through colour and spacing

## Components
- **Nav:** logo (Zegami starburst + wordmark) left, minimal links right. Sticky optional.
- **Hero:** large headline, subheadline, two CTA buttons (primary purple, secondary outline). Background image or screenshot with lavender overlay.
- **Feature cards:** icon or screenshot, heading, short paragraph. Grid of 2-3 per row.
- **Use case section:** simple grid or list, each with a heading and 2-line description.
- **CTA/contact section:** centred, two-column split (Videntai for licensing, Noble Dynamic for implementation).
- **Footer:** minimal — copyright Videntai, links to videntai.com and nobledynamic.com.

## Logo
- Starburst icon + "zegami" wordmark visible in nav at app.zegami.com
- Source the logo assets from the existing site or from Roger
- Currently using a placeholder SVG mark in `layouts/partials/header.html` — swap out when real assets are available.

## Tone
- Confident, clean, not startup-flashy
- Let screenshots and the live demo link do the heavy lifting
- Academic credibility (Oxford origin) mentioned but not overplayed

## Key CTAs
1. "Explore examples" → app.zegami.com (primary)
2. "Get in touch" → #contact section (secondary)

## Screenshot Slots
The copy file (`content.md`) marks where screenshots go with `[SCREENSHOT: ...]` tags. These are also represented as `screenshot` fields in `data/site.yaml`. Prioritise capturing these from app.zegami.com:
1. Grid view — large collection of image tiles with filter panel
2. Map view — geospatial plot with clustered points
3. Detail/metadata view — single item expanded with metadata panel
4. Filter panel — showing multiple active filters

## Files to Reference
- `content.md` — all page content
- Screenshot of app.zegami.com — design reference
- nobledynamic.com — Roger's consulting site, for tone/quality reference
