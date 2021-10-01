{
  description = "A basic flake with a shell";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      defaultPackage = pkgs.pkgsStatic.stdenv.mkDerivation {
        name = "nix-find-roots";
        src = ./.;
        makeFlags = [ "PREFIX=$(out)" ];
      };
    });
}
