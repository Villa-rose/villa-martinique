#!/bin/bash
set -e
jekyll build
cd _site
git init
git checkout -b gh-pages
git add -A .
git commit -m 'Overwrite existing site'
git remote add origin git@github.com:villa-rose/villa-martinique.git
git push --force origin gh-pages
