#!/usr/bin/env nix-shell
#!nix-shell -p nodePackages.svgo -i bash

svgo -i nixcon2018-centered.svg -o nixcon2018-web.svg

