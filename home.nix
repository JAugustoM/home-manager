{ config, lib, pkgs, ... }:
{
  home.username = "jaugusto";
  home.homeDirectory = "/home/jaugusto";
  home.stateVersion = "25.05"; 

  nixpkgs.config = {
    allowUnfree = true;
  };

  nixGL.packages = import <nixgl> { inherit pkgs; };
  nixGL.defaultWrapper = "mesa";
  nixGL.installScripts = [ "mesa" ];

  imports = [
    ./modules/sessionVariables.nix
    ./modules/packages.nix
    ./modules/programs.nix
    ./modules/sessionPath.nix
    ./modules/desktopEntries.nix
  ];

  programs.home-manager.enable = true;
}
