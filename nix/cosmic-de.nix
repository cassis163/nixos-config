{ nixos-cosmic, ... }:

{
  nix.settings = {
    substituters = [ "https://cosmic.cachix.org/" ];
    trusted-public-keys = [ "cosmic.cachix.org-1:Dya9IyXD4xdBehWjrkPv6rtxpmMdRel02smYzA85dPE=" ];
  };

  imports = [
    nixos-cosmic.nixosModules.default
  ];

  hardware.system76.enableAll = true;
}
