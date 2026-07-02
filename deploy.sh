#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

echo "Deploy Just a Textarea to Cloudflare Pages"
echo ""
echo "First time only: npx wrangler login"
echo ""

npx wrangler pages deploy . --project-name=jatxt --branch=main

echo ""
echo "Done. Your site will be at https://jatxt.pages.dev"
echo "Add a custom domain in the Cloudflare dashboard → Pages → Custom domains."
