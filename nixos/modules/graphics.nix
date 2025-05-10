# Use mesa drivers that are compatible with Hyprland for better stability
# .. (see https://wiki.hyprland.org/Nix/Hyprland-on-NixOS/)
{
  pkgs,
  inputs,
  ...
}: let
  pkgs-unstable = inputs.hyprland.inputs.nixpkgs.legacyPackages.${pkgs.stdenv.hostPlatform.system};
in {
  hardware.graphics = {
    enable = true;
    package = pkgs-unstable.mesa;

    # if you also want 32-bit support (e.g for Steam)
    driSupport32Bit = true;
    package32 = pkgs-unstable.pkgsi686Linux.mesa;
  };
}
