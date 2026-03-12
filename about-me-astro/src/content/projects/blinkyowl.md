---
title: BlinkyOwl
shortSummary: Autonomous pipeline that generates, publishes, and self-improves educational YouTube Shorts for kids. Runs daily with 4 safety gates.
summary: End-to-end system covering topic selection, scripting, audio, rendering, upload, analytics, and self-correction. Live YouTube channel and observability dashboard.
category: Autonomous Media System
section: flagship
year: 2026
order: 3
featured: true
detail: true
status: flagship
visibility: private
tags:
  - Python
  - Remotion
  - YouTube API
  - Observability
  - Self-Learning
metrics:
  - 4 safety gates
  - Daily autonomous run
  - Live dashboard
youtube: https://youtube.com/@BlinkyOwl
dashboard: https://tinyhero-obs.surge.sh/
contactHref: mailto:rpbanerjee@outlook.com?subject=BlinkyOwl%20walkthrough
contactLabel: Request walkthrough
---
## The problem

A single educational YouTube Short requires ideation, scripting, illustration, voice, editing, upload, and analytics review. Most creators burn out before consistency compounds. I wanted a system that could sustain daily output without daily effort.

## What I built

BlinkyOwl handles the full loop autonomously: topic selection, narration, visual planning, audio generation, Remotion rendering, YouTube upload, analytics sync, and self-healing adjustments for the next run.

Four safety gates run on every piece of content before it publishes. The system tracks performance telemetry and adjusts future runs — but safety constraints cannot be overridden by performance signals.

## Live proof

The repo is private, but the output is public:

- [YouTube channel](https://youtube.com/@BlinkyOwl) — live content published daily
- [Observability dashboard](https://tinyhero-obs.surge.sh/) — run history, quality metrics, gate pass rates
