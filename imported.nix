let nixpkgs = import <nixpkgs> {}; in
{
  environment.systemPackages = [
    nixpkgs.nmap
  ];
}
