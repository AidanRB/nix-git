{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    nativeBuildInputs = with pkgs.buildPackages; [ ruby_3_2 ];

  git_src = builtins.fetchGit {
  	url = "https://github.com/AidanRB/nix-git";
  };

  imports = [
  	(git_src + "imported.nix")
  ];
}
