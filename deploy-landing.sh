#!/bin/bash
set -e

echo "=== BuildAudit Landing Page — Deploy to Cloudflare Pages ==="
echo ""

# Deploy to Cloudflare Pages (direct upload)
npx wrangler pages deploy . --project-name=buildaudit-landing --branch=production

echo ""
echo "--- Setting custom domain ---"
echo "Now go to Cloudflare dashboard → Pages → buildaudit-landing → Custom domains"
echo "Add: buildaudit.dev"
echo "Add: www.buildaudit.dev"
echo ""
echo "Or use the API:"
echo "  curl -X POST 'https://api.cloudflare.com/client/v4/accounts/{ACCOUNT_ID}/pages/projects/buildaudit-landing/domains' \\"
echo "    -H 'Authorization: Bearer {CF_API_TOKEN}' \\"
echo "    -H 'Content-Type: application/json' \\"
echo "    -d '{\"name\": \"buildaudit.dev\"}'"
echo ""
echo "=== Done ==="
