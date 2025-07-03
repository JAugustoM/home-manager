{ config, lib, pkgs, ... }:
{
  programs.nvf = {
    enable = true;
    
    settings = {
      vim.lsp = import ./nvf/lsp.nix;

      vim.utility.snacks-nvim.enable = true;
    };
  };
}
