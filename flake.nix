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
    plasma-manager = {
      url = "github:nix-community/plasma-manager";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.home-manager.follows = "home-manager";
    };
  };

  outputs =
    { nixpkgs, home-manager, nixgl, catppuccin, plasma-manager, ... }:
    {
      homeConfigurations."jaugusto" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        modules = [ 
          catppuccin.homeModules.catppuccin
          plasma-manager.homeManagerModules.plasma-manager
          ./home.nix 
        ];
        extraSpecialArgs = {
          inherit nixgl;
        };
      };
    };
}
