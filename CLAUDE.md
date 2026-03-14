# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Is

Personal portfolio website for Rishi Banerjee. Astro 5 static site, deployed to GitHub Pages at `rishi-banerjee1.github.io/about-me/`. Positioning: "TA Leader Who Builds Systems & Ships Tools."

## Commands

```bash
# Local dev server (hot reload)
npm run dev

# Build + copy to docs/ + add .nojekyll, then push
npm run build
git add -A && git commit -m "..." && git push origin main
```

**CRITICAL:** Always use `npm run build` — it builds Astro, wipes `docs/`, copies `dist/` output, and creates `docs/.nojekyll`. Never manually `cp -r dist docs` without also touching `.nojekyll` or GitHub Pages will run Jekyll and strip the `_astro/` folder (site goes completely unstyled).

## Critical Rules

1. **Never mention names of other people** — use titles/roles and company names only (e.g., "Engineering Manager, FAANG" not personal names)
2. **Base path**: All internal links must use `/about-me/` prefix for GitHub Pages (`base: "/about-me"` in astro.config.mjs)
3. **Analytics**: GoatCounter at `rishisite.goatcounter.com`
4. **Book reference**: "Raising the Bar: Building High-Density Teams in the Age of AI" — Amazon India link: `https://www.amazon.in/dp/B0FQMWW9RR`
5. **Title**: Director of Talent Acquisition at Atlan
6. **Real screenshots only** — never AI-generated composites or mock-ups

## Architecture

Astro 5 static site with content collections. No SSR — fully static output.

- `src/content/projects/` — Markdown files, one per project (source of truth for all project data)
- `src/pages/index.astro` — Homepage: hero, logos, about, featured projects, experience, expertise, testimonials, education, CTA
- `src/pages/projects/index.astro` — Full projects listing (flagship + deep dives + supporting)
- `src/pages/projects/[slug].astro` — Individual project detail pages (generated from content collection)
- `src/components/` — ProjectCard, Nav, Footer, etc.
- `src/lib/site.ts` — All static data: SITE config, heroStats, experience, expertise, testimonials, organizations, supportingSections
- `src/layouts/BaseLayout.astro` — HTML shell, fonts, dark mode
- `docs/` — Built output served by GitHub Pages (generated, never edit manually)

### Project Frontmatter Fields

```yaml
featured: true         # shows on homepage flagship grid
detail: true           # gets its own /projects/slug/ page
section: flagship      # "flagship" | "supporting"
order: 1               # sort order (lower = first)
visibility: public     # "public" | "private"
status: flagship       # displayed as a badge
```

### Deploying a Content Change

1. Edit the relevant `.md` file in `src/content/projects/`
2. Run `npm run build`
3. `git add -A && git commit -m "..." && git push origin main`
4. GitHub Pages auto-deploys from `docs/` on push (~30s)

## File Roles

| File | Role | Generated? |
|------|------|-----------|
| `src/content/projects/*.md` | Project content — source of truth | No |
| `src/lib/site.ts` | All non-project site data (experience, stats, etc.) | No |
| `src/pages/index.astro` | Homepage template | No |
| `src/pages/projects/index.astro` | Projects listing page | No |
| `src/pages/projects/[slug].astro` | Project detail page template | No |
| `src/components/ProjectCard.astro` | Reusable project card component | No |
| `docs/` | Built static output for GitHub Pages | Yes — via `npm run build` |
| `dist/` | Astro intermediate build output (gitignored) | Yes |
