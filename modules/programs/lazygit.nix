{ config, lib, pkgs, ...}:
{
  programs.lazygit = {
    enable = true;
    package = config.lib.nixGL.wrap pkgs.lazygit;
    settings = {
      os.edit = "nvim {{filename}}";
    };
  };
}
