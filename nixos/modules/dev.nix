{
  config,
  pkgs,
  inputs,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    zellij
    btop
    fastfetch
    nixfmt-rfc-style
    vscode.fhs
    jetbrains.idea-community-bin
  ];
}
