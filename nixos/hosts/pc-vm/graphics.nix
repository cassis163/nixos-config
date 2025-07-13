{
  pkgs,
  inputs,
  ...
}:
{
  hardware.nvidia.open = false;
  services.xserver.videoDrivers = [ "nvidia" ];
}
