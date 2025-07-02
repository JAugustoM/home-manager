{
  description = "Home Manager configuration of jaugusto";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixgl.url = "github:nix-community/nixGL";
    catppuccin.url = "github:catppuccin/nix";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { nixpkgs, home-manager, nixgl, catppuccin, ... }:
    {
      homeConfigurations."jaugusto" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        modules = [ 
          catppuccin.homeModules.catppuccin
          ./home.nix 
        ];
        extraSpecialArgs = {
          inherit nixgl;
        };
      };
    };
}
