# { pkgs ? import <nixpkgs> {} }:

let
  git_src = builtins.fetchGit {
    url = "https://github.com/AidanRB/nix-git";
    rev = "46994657cffbde2e6a0fbb1054090b4c7ea33123";
  }; in
  # imported = import (git_src + "/imported.nix");
  # imported = import ./imported.nix;
# in
import (git_src + "/imported.nix")

  # pkgs.mkShell {


  # imports = [
  # 	# (git_src + "imported.nix")
  #   ./imported.nix
  # ];
# }
