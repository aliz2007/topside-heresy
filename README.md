# Topside Heresy

Veigar and Aurelion Sol top lane codex for patch 26.15 (Season 16). 54 sourced matchups with deep dossiers: the lock recommendation and why, early and late game plans, full rune pages with per-rune reasons, item paths with per-item reasons, cheese answers, jungle sync, and the mistakes that lose each lane.

Made by Nine and DiabloV2.

The site itself is one self-contained HTML file: no backend, no tracking, works offline, all champion/item/rune icons inlined. This repo stores that file as base64 chunks under `chunks/` (GitHub web flows handle small files best); `assemble.sh` rebuilds the real file into `dist/index.html`.

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

## Content sources

Stats per LoLalytics / OP.GG / U.GG patch 26.15, ability and item numbers per Data Dragon and Community Dragon 16.15.1, matchup mechanics per the League wiki, plus a Master 1K LP Aurelion Sol OTP guide and the classic Veigar cage matchup spreadsheet. Every dossier carries inline source tags.
