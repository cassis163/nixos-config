{
  pkgs,
  ...
}:
{
  programs.virt-manager.enable = true;

  users.groups.libvirtd.members = ["caspera-fv"];

  virtualisation.libvirtd.enable = true;

  virtualisation.spiceUSBRedirection.enable = true;
}
