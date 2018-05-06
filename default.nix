{ pkgs ? import ./nixpkgs {} }:

pkgs.stdenv.mkDerivation {
  name = "nixcon2018-website";

  src = ./.;

  buildInputs = with pkgs; [
    glibcLocales
    (haskellPackages.ghcWithPackages (ps: with ps; [
      hakyll
    ]))
  ];

  LC_ALL = "en_US.UTF-8";

  buildPhase = ''
    ghc --make site.hs
    ./site build
  '';

  installPhase = ''
    mkdir $out
    cp -r _site/* $out
  '';
}
