# 90 Day Operating Dashboard

Last updated: 2026-06-28

## Current State

| Metric | Current value | Notes |
| --- | --- | --- |
| HTML pages in source | 34 | `scripts\verify-static-site.ps1` passed with 34 sitemap URLs. |
| Source-ready content pages | 25 | `scripts\audit-content.ps1` found 25 content pages and 0 launch blockers. |
| Documentation-based money pages in source | 5 | Air fryer, dish rack, small coffee maker, rice cooker, sink organizer. |
| Amazon affiliate links | 0 | `scripts\audit-affiliate-readiness.ps1` found 0 Amazon affiliate links. |
| Potential manual Amazon data mentions | 0 | No copied Amazon prices, ratings, reviews, or images detected by audit. |
| Search Console status | Pending | Sitemap submission still needed before Amazon application. |
| Amazon Associates status | Not applied | Hold until public deployment + Search Console + final compliance review. |

## Source-Ready Pages Pending Public Deploy

| Priority | URL | Status | Next action |
| --- | --- | --- | --- |
| P0 | `/best/compact-air-fryers-small-kitchens/` | Source-ready | Deploy latest source and submit in Search Console. |
| P0 | `/best/dish-drying-racks-small-kitchens/` | Source-ready | Deploy latest source and submit in Search Console. |
| P0 | `/best/small-coffee-makers-apartments/` | Source-ready | Deploy latest source and submit in Search Console. |
| P0 | `/best/compact-rice-cookers-two-people/` | Source-ready | Deploy latest source and submit in Search Console. |
| P0 | `/best/sink-organizers-small-kitchens/` | Source-ready | Deploy latest source and submit in Search Console. |

## Weekly KPI Placeholder

| Week | Published pages | Indexed pages | GSC impressions | GSC clicks | Affiliate clicks | Sales | Notes |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Week 0 | 25 source-ready | Pending GSC | N/A | N/A | N/A | N/A | Deploy latest source, submit sitemap, and start tracking. |

## Action Queue

| Priority | Action | Owner | Status |
| --- | --- | --- | --- |
| P0 | Commit and push current source updates. | Codex | Done in `6d79669` |
| P0 | Deploy latest source to Netlify. | Owner/Codex if access exists | Pending external access |
| P0 | Verify public `/sitemap.xml` has 34 URLs. | Owner/Codex after deploy | Pending deploy |
| P0 | Set up Search Console and submit sitemap. | Owner | Pending Google access |
| P1 | Run final affiliate readiness audit after public deploy. | Codex | Pending deploy |
| P1 | Apply Amazon Associates only after GSC/final review. | Owner | Hold |
| P2 | Re-check availability before adding any affiliate links. | Codex/Owner | Hold |

## Blockers

- Netlify Git connection or ZIP upload needs owner account access if not already authenticated.
- Google Search Console setup needs owner Google account access.
- Amazon Associates application needs owner Amazon account/application access.
- Affiliate links remain blocked until Amazon workflow and Task 16 are ready.

## Friday Review Questions

- Which source-ready pages are publicly deployed?
- Which URLs have been submitted or indexed in Search Console?
- Which money page needs a source refresh before monetization?
- Are there any compliance issues, affiliate-looking links, or copied product data?
- What are the next 1-3 pages or updates for the coming week?
