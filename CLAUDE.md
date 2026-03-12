# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Is

Personal portfolio website for Rishi Banerjee. Static HTML/CSS/JS, deployed to GitHub Pages at `rishiatlan.github.io/about-me/`. Positioning: "TA Leader Who Builds Systems & Ships Tools."

## Commands

```bash
# Preview locally (python simple server)
python3 -m http.server 8080

# Deploy (push to GitHub Pages)
git add -A && git commit -m "update site" && git push origin main
```

## Critical Rules

1. **Never mention names of other people** — use titles/roles and company names only (e.g., "Engineering Manager, FAANG" not personal names)
2. **Base path**: All internal links must use `/about-me/` prefix for GitHub Pages
3. **Analytics**: GoatCounter at `rishisite.goatcounter.com`
4. **Book reference**: "Raising the Bar: Building High-Density Teams in the Age of AI" — Amazon India link: `https://www.amazon.in/dp/B0FQMWW9RR`
5. **Title**: Director of Talent Acquisition at Atlan
6. **Real screenshots only** — never AI-generated composites or mock-ups

## Architecture

Pure static site — no build step, no framework, no dependencies.

- `index.html` — Main page with hero, about, projects, book, contact sections
- `projects.html` — Project showcase page
- `projects/` — Individual project detail pages
- `css/style.css` — All styles with CSS custom properties
- `js/main.js` — Mobile nav toggle + IntersectionObserver scroll animations
- `assets/` — Images (headshot, project screenshots)

### Design System

- Font: Inter (Google Fonts)
- Accent color: `#2563eb` (blue)
- Layout: max-width 1080px, light mode only
- Animations: Subtle fade-in on scroll via IntersectionObserver

### SEO

- JSON-LD structured data (Person schema)
- Open Graph + Twitter Card meta tags
- Semantic HTML with proper heading hierarchy

## File Roles

| File | Role | Generated? |
|------|------|-----------|
| `index.html` | Main page — hero, about, projects, book, contact | No |
| `projects.html` | Project showcase page | No |
| `projects/` | Individual project detail pages | No |
| `css/style.css` | All styles with CSS custom properties | No |
| `js/main.js` | Mobile nav + scroll animations | No |
| `assets/` | Images (headshot, screenshots) | No |
