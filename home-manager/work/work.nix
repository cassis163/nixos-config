# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  inputs,
  lib,
  config,
  pkgs,
  ...
}:
{
  # You can import other home-manager modules here
  imports = [
    # If you want to use home-manager modules from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModule

    # You can also split up your configuration and import pieces of it here:
    # ./nvim.nix

    ../common
  ];

  # TODO: Set your username
  home = {
    username = "caspera-fv";
    homeDirectory = "/home/caspera-fv";
  };

  programs.git = {
    enable = true;
    userName = "caangeenbrug-fv";
    userEmail = "c.aangeenbrug@flikweertvision.nl";
  };
}
