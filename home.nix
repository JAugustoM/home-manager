{ config, lib, pkgs, nixgl, ... }:
{
  home.username = "jaugusto";
  home.homeDirectory = "/home/jaugusto";
  home.stateVersion = "25.05"; 

  nixpkgs.config = {
    allowUnfree = true;
  };

  nixGL.packages = nixgl.packages;
  nixGL.defaultWrapper = "mesa";
  nixGL.installScripts = [ "mesa" ];

  imports = [
    ./modules/programs.nix
    ./modules/system.nix
    ./modules/catppuccin.nix
  ];

  programs.home-manager.enable = true;
}
