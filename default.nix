# { pkgs ? import <nixpkgs> {} }:

let
  git_src = builtins.fetchGit {
    url = "https://github.com/AidanRB/nix-git";
    rev = "cd1bf4ab89c8b99ce6e4e8c699b0b0bf977a68ad";
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
