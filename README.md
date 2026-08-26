# Just a Textarea

A zero-friction, full-window plain text editor. Paste rich text from anywhere — formatting is stripped automatically, copied to your clipboard, and the editor clears itself so you're ready for the next paste.

**Live:** [jatxt.pages.dev](https://jatxt.pages.dev)

## What it does

- **Paste to strip** — rich text becomes plain text instantly
- **Auto-copy** — stripped text lands on your clipboard without an extra step
- **Auto-clear** — editor empties after 10 seconds (type to cancel the countdown)
- **Recent pastes** — last 30 strips saved in the footer bar; click to restore
- **Time reclaimed** — estimates how much time you save vs. the hunt-paste-select-copy-clear ritual
- **Local only** — everything stays in your browser via localStorage; nothing hits a server

Dark mode follows your system preference. Press `?` in the toolbar for the full help panel.

## Keyboard shortcuts

| Shortcut | Action |
|----------|--------|
| ⌘/Ctrl + C | Copy (when editor is focused) |
| ⌘/Ctrl + K | Clear the editor |
| Esc | Close help or time-reclaimed panel |

## Run locally

Single static file — no build step.

```bash
open index.html
# or
python3 -m http.server 8080
```

Then visit http://localhost:8080

## Deploy

Hosted on **Cloudflare Pages** (free, unlimited bandwidth, SSL).

### One command

```bash
npx wrangler login   # first time only
./deploy.sh
```

Goes live at **https://jatxt.pages.dev**.

### GitHub auto-deploy

1. Push this repo to GitHub
2. [Cloudflare dashboard](https://dash.cloudflare.com) → **Workers & Pages** → **Create** → **Pages** → **Connect to Git**
3. Select the repo — leave build settings empty (no build command, output directory `/`)
4. Set project name to `jatxt` for **https://jatxt.pages.dev**

Custom domains can be added in the Cloudflare Pages dashboard after deploy.

## Analytics

Uses **Cloudflare Web Analytics** (free, privacy-first, no cookies). For Pages projects Cloudflare injects the beacon automatically — nothing to add to `index.html`.

### Enable

1. [Cloudflare dashboard](https://dash.cloudflare.com) → **Workers & Pages** → **jatxt**
2. Open **Metrics** → **Enable** under Web Analytics
3. Redeploy so the beacon is injected:

```bash
./deploy.sh
```

### View

[Web Analytics](https://dash.cloudflare.com/?to=/:account/web-analytics) → select the site for `jatxt` / `jatxt.pages.dev`.
