#!/bin/bash
set -x

# Generate the PDF's
node _scripts/makepdf_md.js

# Build the site with Jekyll
bundle exec jekyll build