# Static Site

This is the zero-budget public website foundation for Tanh's Compact Kitchen Notes.

## Deploy target

Recommended:

- Netlify Free, publish directory: `site`
- Cloudflare Pages Free, build output directory: `site`

Do not use Vercel Hobby for the production affiliate site because the project is commercial/affiliate-oriented.

## Before launch

- Replace `hello@example.com` in `/contact/`.
- Confirm the final public URL.
- Update `robots.txt` and `sitemap.xml` from `https://tanhs-compact-kitchen.netlify.app` to the final URL.
- Add Google Search Console verification.
- Add analytics only after privacy policy matches the tool used.

## Included static hosting files

- `_headers`: security headers for compatible static hosts.
- `robots.txt`: crawler policy and sitemap pointer.
- `sitemap.xml`: current public URL list using the placeholder Netlify URL.
