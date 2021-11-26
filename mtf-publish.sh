#!/bin/bash

git pull
/opt/homebrew/bin/hugo -D
git add -A
git commit -m "Publishing"
git push