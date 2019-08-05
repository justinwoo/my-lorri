let
  pkgs = import <nixpkgs> {};
  lorri = import ./default.nix { inherit pkgs; };
in
  pkgs.mkShell {
    buildInputs = [ lorri ];
  }
