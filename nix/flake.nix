{
  description = "cassis163's NixOS Configuration";

  inputs = {
      nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
      nixpkgs.follows = "nixos-cosmic/nixpkgs-stable";
      nixos-cosmic.url = "github:lilyinstarlight/nixos-cosmic";
  };

  outputs = { nixpkgs, ... } @ inputs:
  {
    nixosConfigurations.caspera = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [
        ./configuration.nix
        ./hardware-configuration.nix

        # Standard config
        ./users.nix
        ./language.nix
        ./time.nix
        ./networking.nix
        ./graphics.nix

        # Standard services
        ./openssh.nix

        # DE apps
        ./cosmic-de.nix
      ];
    };
  };
}
