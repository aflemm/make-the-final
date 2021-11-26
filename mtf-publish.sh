#!/bin/bash

git pull
/usr/local/bin/hugo -D
git add -A
git commit -m "Publishing"
git push