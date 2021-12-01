#!/bin/bash

git pull
/opt/homebrew/bin/hugo -D

if ![ -e docs/CNAME]
then
  echo "not found"
else
  echo "found"
fi
 
git add -A
git commit -m "Publishing"
git push