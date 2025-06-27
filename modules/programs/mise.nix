{ config, lib, pkgs, ...}:
{
  programs.mise = {
    enable = true;
    globalConfig = {
      settings = {
        npm.bun = true;
        pipx.uvx = true;
        python.uv_venv_auto = true;
        cargo_binstall = true;
        idiomatic_version_file_enable_tools = ["python"];
        experimental = true;
      };
      tools = {
        bun = "latest";
        usage = "latest";
        watchexec = "latest";
        uv = "latest";
        cargo-binstall = "latest";
        node = "latest";
      };
    };
  };
}
