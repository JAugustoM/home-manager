{ config, lib, pkgs, ... }:
{
  imports = [
    ./system/sessionPath.nix
    ./system/sessionVariables.nix
    ./system/desktopEntries.nix
  ];
}
