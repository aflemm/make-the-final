#!/bin/bash

git pull

rm docs 

/opt/homebrew/bin/hugo -D

if ! [ -e docs/CNAME ]
then
  echo "CNAME not found, copying from resources"
  cp resources/CNAME docs/CNAME
fi
 
git add -A
git commit -m "Publishing from Elvira"
git push