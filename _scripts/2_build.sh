#!/bin/bash
set -x

# Generate the PDF's
node makepdf.js

# Build the site with Jekyll
bundle exec jekyll build