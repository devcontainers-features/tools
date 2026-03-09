{
  description = "tools — devcontainer feature marketplace";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShells.default = pkgs.mkShell {
          name = "claude-features";

          packages = with pkgs; [
            devcontainer # feature test runner (mirrors CI)
            docker # docker CLI for feature tests
            jq # JSON inspection
            gh # GitHub CLI
            git
            shellcheck # shell script linting
          ];
        };
      }
    );
}
