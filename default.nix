{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation rec {
  name = "lorri";

  src = pkgs.fetchurl {
    url = "https://github.com/justinwoo/my-lorri/releases/download/20190805/lorri.tar.gz";
    sha256 = "14k3ycqhc3m170s848kgyd3236z1p6yjsmj8aavwyqyi4dh2p97x";
  };

  buildInputs = [];

  dontStrip = true;

  unpackPhase = ''
      mkdir -p $out/bin
      tar xf $src -C $out/bin
    '';

  dontInstall = true;
}
