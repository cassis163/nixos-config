{
  xdg,
  ...
}:
{
  programs = {
    nushell = {
      configFile.source = ./config.nu;
      enable = true;
      shellAliases = {
        vi = "nvim";
        vim = "nvim";
      };
    };
    carapace.enable = true;
    carapace.enableNushellIntegration = true;

    starship = {
      enable = true;
      settings = {
        add_newline = true;
        character = {
          success_symbol = "[➜](bold green)";
          error_symbol = "[➜](bold red)";
        };
      };
    };
  };
}
