{ config, lib, pkgs, ... }:
{
  programs.plasma = {
    enable = true;
    
    workspace = {
      wallpaper = ../include/media/City.jpg;
    };

    hotkeys.commands."launch-kitty" = {
      name = "Launch Kitty";
      key = "Meta+Return";
      command = "kitty";
    };
  };
}
