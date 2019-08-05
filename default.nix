{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation rec {
  name = "lorri";

  src = pkgs.fetchurl {
    url = "https://github.com/justinwoo/my-lorri/releases/download/20190805/lorri.tar.gz";
    sha256 = "0gjaz22d2pisy4fk47d1m6gk6wgx293szm8mdhdy89050wwqpsz0";
  };

  buildInputs = [ ];

  dontStrip = true;

  unpackPhase = ''
      mkdir -p $out/bin
      tar xf $src -C $out/bin
    '';

  dontInstall = true;
}
