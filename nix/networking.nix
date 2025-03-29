{ pkgs, ... }:

{
  networking.hostName = "caspera";
  # Enable networking
  networking.networkmanager.enable = true;
}
