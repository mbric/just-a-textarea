# Just a Textarea

A zero-friction, full-window plain text area. Paste rich text from anywhere — formatting is stripped automatically. Your text persists in the browser via localStorage.

## Use it locally

```bash
open index.html
# or
python3 -m http.server 8080
```

Then visit http://localhost:8080

## Deploy (free, ~2 minutes)

This is a single static file — no build step. **Cloudflare Pages** is the best free option: unlimited bandwidth, free SSL, and a short subdomain at `jatxt.pages.dev`.

### Option A — One command (fastest)

```bash
npx wrangler login          # first time only
./deploy.sh
```

Your site goes live at **https://jatxt.pages.dev**.

### Option B — GitHub + Cloudflare Pages (auto-deploy on push)

1. Push this repo to GitHub (`gh auth login` if needed, then `gh repo create just-a-textarea --public --source=. --push`)
2. Go to [dash.cloudflare.com](https://dash.cloudflare.com) → **Workers & Pages** → **Create** → **Pages** → **Connect to Git**
3. Select the repo, leave build settings empty (no build command, output directory `/`)
4. Deploy — set the project name to `jatxt` for **https://jatxt.pages.dev**

### Option C — Netlify drag-and-drop (no CLI)

1. Zip the folder or drag it onto [app.netlify.com/drop](https://app.netlify.com/drop)
2. You get something like `random-name.netlify.app` — rename it to `justatextarea` in Site settings → Domain management

## Custom domain ideas

| Domain | Status | ~Price/yr | Notes |
|--------|--------|-----------|-------|
| `justatextarea.com` | Available | ~$10 | Descriptive, easy to remember |
| `stripformat.com` | Available | ~$10 | Describes the paste-to-strip use case |
| `stripformat.io` | Available | ~$30 | Short, techy |
| `plaintextarea.com` | Available | ~$10 | Clear purpose |
| `jat.io` | Taken | — | Parked on GoDaddy |
| `strip.io` | Taken | — | Parked on GoDaddy |
| `jat.app` | Taken | — | Parked on Afternic (likely premium) |

Check current availability at [porkbun.com](https://porkbun.com) or [namecheap.com](https://namecheap.com).

### Connecting a custom domain

After deploying to Cloudflare Pages or Netlify:

1. Buy the domain (Porkbun and Cloudflare Registrar are good value)
2. In your host's dashboard → **Custom domains** → add your domain
3. Point DNS as instructed (Cloudflare can manage DNS for you if you transfer or add the zone)
4. SSL is automatic — no extra setup

**Recommended combo:** buy `justatextarea.com` (~$10/yr) + host free on Cloudflare Pages. Total cost: about $10/year for a real domain with unlimited hosting.

## Keyboard shortcuts

| Shortcut | Action |
|----------|--------|
| ⌘/Ctrl + K | Clear all text |
| ⌘/Ctrl + C | Copy (when textarea is focused) |
