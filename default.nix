{ pkgs ? import <nixpkgs> {} }:

  let git_src = builtins.fetchGit {
    url = "https://github.com/AidanRB/nix-git";
  }; in
  (import (git_src + "/imported.nix") {})

  # pkgs.mkShell {


  # imports = [
  # 	# (git_src + "imported.nix")
  #   ./imported.nix
  # ];
# }
