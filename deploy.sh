#!/bin/bash

git branch -d gh-pages
git checkout -b gh-pages


rm .gitignore
rm LICENSE
rm package.json
rm -rf node_modules

find . -iname "*README*" -exec rename README.md index.md '{}' \;

echo wcc.dailysh.it > CNAME

git push --set-upstream origin gh-pages
git commit -am "deploy new version"
git push
git checkout main
