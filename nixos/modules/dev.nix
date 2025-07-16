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
    jetbrains.idea-community-bin
    (vscode-with-extensions.override {
      vscodeExtensions =
        with vscode-extensions;
        [
          editorconfig.editorconfig
          jnoortheen.nix-ide
          vscodevim.vim
        ]
        ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
          {
            name = "Go";
            publisher = "golang";
            version = "0.49.0";
            sha256 = "sha256-8NahTd2v057997GsW9OgxFo9qDLoGIeNvYUQrpXSHDI=";
          }
          {
            name = "github-vscode-theme";
            publisher = "GitHub";
            version = "6.3.5";
            sha256 = "sha256-dOadoYBPcYrpzmqOpJwG+/nPwTfJtlsOFDU3FctdR0o=";
          }
          {
            name = "kdl";
            publisher = "kdl-org";
            version = "2.1.3";
            sha256 = "sha256-Jssmb5owrgNWlmLFSKCgqMJKp3sPpOrlEUBwzZSSpbM=";
          }
          {
            name = "even-better-toml";
            publisher = "tamasfe";
            version = "0.21.2";
            sha256 = "sha256-IbjWavQoXu4x4hpEkvkhqzbf/NhZpn8RFdKTAnRlCAg=";
          }
          {
            name = "vscode-nushell-lang";
            publisher = "TheNuProjectContributors";
            version = "1.10.0";
            sha256 = "sha256-AfClskNZwQIC67VrM8XKxF6nIbXPp576CRmls0WCKwU=";
          }
        ];
    })
  ];
}
