#!/bin/bash

git branch -d gh-pages
git checkout -b gh-pages

rm .gitignore
rm LICENSE
rm package.json
