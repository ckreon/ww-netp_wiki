#!/bin/bash
set -x

# Generate the PDF's
node makepdf.js

# Build the site with Jekyll
bundle exec jekyll build

# Compress assets with Zopfli
zopfli/zopfli --i1000 _site/*.xml _site/*.html _site/**/*.html _site/assets/css/*.css _site/assets/pdf/*.pdf _site/assets/fonts/*

# zopfli/zopfli --i1000 _site/**/*.html _site/*.html  _site/**/*.css _site/*.css _site/**/*.js _site/*.js _site/**/*.xml _site/*.xml _site/assets/pdf/* _site/assets/fonts/*