# Topside Heresy

Veigar and Aurelion Sol top lane codex for patch 26.15 (Season 16). 54 sourced matchups with deep dossiers: the lock recommendation and why, early and late game plans, full rune pages with per-rune reasons, item paths with per-item reasons, cheese answers, jungle sync, and the mistakes that lose each lane.

Made by Nine and DiabloV2.

The site itself is one self-contained HTML file: no backend, no tracking, works offline, all champion/item/rune icons inlined. `assemble.sh` downloads the gzipped site bundle from temporary storage and verifies it with pinned sha256 checksums before unpacking it to `dist/index.html`; if the bytes do not match the checksums the build fails, so a corrupted deploy is impossible.

## Run locally

```sh
sh assemble.sh
# then open dist/index.html in any browser
```

## Deploy on Render (free static site)

1. Render Dashboard, then **New**, then **Static Site**.
2. Connect your GitHub account and pick `aliz2007/topside-heresy`.
3. Build Command: `sh assemble.sh`
4. Publish Directory: `dist`
5. Create Static Site. Every push to `main` redeploys automatically.

## Rebuilds after 2026-08-08

The bundle download link is temporary and expires on 2026-08-08. The first deploy and any redeploy until then work as-is. After that date a fresh copy of the bundle must be uploaded and the URL in `assemble.sh` updated; the pinned sha256 values stay the same.

## Content sources

Stats per LoLalytics / OP.GG / U.GG patch 26.15, ability and item numbers per Data Dragon and Community Dragon 16.15.1, matchup mechanics per the League wiki, plus a Master 1K LP Aurelion Sol OTP guide and the classic Veigar cage matchup spreadsheet. Every dossier carries inline source tags.
