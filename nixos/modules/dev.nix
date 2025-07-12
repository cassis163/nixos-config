{
  config,
  pkgs,
  inputs,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    nixfmt-rfc-style
    (vscode-with-extensions.override {
      vscodeExtensions =
        with vscode-extensions;
        [
          editorconfig.editorconfig
          jnoortheen.nix-ide
        ]
        ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
          {
            name = "kdl";
            publisher = "kdl-org";
            version = "2.1.3";
            sha256 = "sha256-Jssmb5owrgNWlmLFSKCgqMJKp3sPpOrlEUBwzZSSpbM=";
          }
        ];
    })
  ];
}
