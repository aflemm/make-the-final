#!/bin/bash

# Pull the most recent changes from Github
git pull

# Always perform a clean build by first deleting the publishing directory
# This seems to force Github to re-provision the TLS certificate, so don't
#rm -rf docs

# Build the site
# This is the full hugo path for Elvira so I can execute this script from iOS over SSH
/opt/homebrew/bin/hugo -D

# Make sure the CNAME doc is present (tells Github to use http://makethefinal.ca)
# This is assured by the CNAME file being in the /static folder. Don't need this ⬇️
#if ! [ -e docs/CNAME ]
#then
#  echo "CNAME not found, copying from resources"
#  cp resources/CNAME docs/CNAME
#fi

# Stage all changes
git add -A

# Commit the changes
git commit -m "Publishing from Elvira"

# Push the changes up to Github
git push