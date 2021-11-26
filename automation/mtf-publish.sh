#!/bin/bash

cd ~/GitHub/make-the-final
git pull
hugo -D
git add -A
git commit -m "New Post"
git push