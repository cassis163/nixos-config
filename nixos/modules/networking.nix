{
  config,
  pkgs,
  ...
}:
{
  # TODO: Set your hostname
  networking.hostName = "caspera-host";

  networking.networkmanager.enable = true;
}
