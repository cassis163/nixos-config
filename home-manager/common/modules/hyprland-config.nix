{
  # Config was originally copied from https://wiki.hyprland.org/Nix/Hyprland-on-Home-Manager/
  wayland.windowManager.hyprland = {
    enable = true;
    # set the Hyprland and XDPH packages to null to use the ones from the NixOS module
    package = null;
    portalPackage = null;
    systemd.variables = ["--all"];
    settings = {
      "$mod" = "SUPER";
      bind =
        [
          # Launch terminal
          "$mod, RETURN, exec, ghostty"
          # Launch browser
          "$mod, F, exec, ungoogled-chromium"
          # ", Print, exec, grimblast copy area"
        ]
        ++ (
          # workspaces
          # binds $mod + [shift +] {1..9} to [move to] workspace {1..9}
          builtins.concatLists (builtins.genList (i:
              let ws = i + 1;
              in [
                "$mod, code:1${toString i}, workspace, ${toString ws}"
                "$mod SHIFT, code:1${toString i}, movetoworkspace, ${toString ws}"
              ]
            )
            9)
        );
    };
    # Raw hyprland.conf content
    extraConfig = ''
      ecosystem:no_update_news = true
      ecosystem:no_donation_nag = true
    '';
  };
}
