{
  imports = [
    ./networking.nix
    ./users.nix
    ./graphics.nix
    ./bluetooth.nix
    ./desktop.nix
    ./audio.nix
    ./vscode.nix
    ./nvim.nix
    ./browser.nix
    ./backlight.nix
    ./fonts.nix
    ./direnv.nix
    # DisplayLink is currently unsupported
    # ./displaylink.nix
    ./locale.nix
    ./chat.nix
    ./stylix.nix
  ];
}
