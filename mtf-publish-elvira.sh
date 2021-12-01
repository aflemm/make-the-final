#!/bin/bash

git pull
/opt/homebrew/bin/hugo -D

if ! [ -e docs/CNAME ]
then
  echo "CNAME not found, copying from resources"
  cp resources/CNAME docs/CNAME
fi
 
git add -A
git commit -m "Publishing"
git push