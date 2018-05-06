#!/usr/bin/env nix-shell
#! nix-shell -i bash

# Create the gh-pages repo
styx deploy --init-gh-pages

# Generate and commit the pages into the gh-pages repo
styx deploy --gh-pages

# Push the branch to the main repo
(cd gh-pages && git push -u origin gh-pages)

# Push the branch to github
git push -f -u origin gh-pages
