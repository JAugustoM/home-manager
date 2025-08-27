{
  pkgs,
  config,
  ...
}:
{
  home.packages = with pkgs; [
    bison
    devenv
    flex
    gcc
    (config.lib.nixGL.wrap jetbrains.clion)
    jre
    rustup
    uv
  ];
}
