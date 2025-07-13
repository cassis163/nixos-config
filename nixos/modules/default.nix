{
  imports = [
    ./networking.nix
    ./users.nix
    ./graphics.nix
    ./bluetooth.nix
    ./desktop.nix
    ./audio.nix
    ./dev.nix
    ./nvim.nix
    ./browser.nix
    ./backlight.nix
    ./fonts.nix
    ./direnv.nix
    # DisplayLink is currently unsupported
    # ./displaylink.nix
    ./locale.nix
    ./stylix.nix
    ./ssh.nix
    ./podman.nix
  ];
}
