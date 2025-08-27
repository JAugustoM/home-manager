{
  pkgs,
  config,
  ...
}:
{
  home.packages = with pkgs; [
    kew
    (config.lib.nixGL.wrap stremio)
    (config.lib.nixGL.wrap youtube-music)
  ];
}
