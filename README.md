<a href="https://travis-ci.org/nix-community/nixcon2018.org"><img src="https://travis-ci.org/nix-community/nixcon2018.org.svg?branch=master"></a>

# Website for NixCon 2018

Copied from https://github.com/cko/nixcon2017

## Build

The site is built with [Hakyll](https://jaspervdj.be/hakyll/)

    ghc --make site.hs
    site build
    site server

Watch and recompile for changes with `site watch`

### Build with nix

    nix-build

## Travis Deployment

Go to GitHub.com -> Settings -> Applications -> Personal Access Tokens — > Create new token, and copy it to your clipboard
`travis encrypt -r nix-community/nixcon2018.org GH_TOKEN=[your token]`
