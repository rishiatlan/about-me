#!/usr/bin/env bash
set -euo pipefail

# Build the Zola site
zola build

# Deploy to docs/ for GitHub Pages
rm -rf docs
cp -r public docs
touch docs/.nojekyll

echo "Build complete. docs/ ready for GitHub Pages."
