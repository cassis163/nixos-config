{
  # Config was originally copied from https://wiki.hyprland.org/Nix/Hyprland-on-Home-Manager/
  wayland.windowManager.hyprland = {
    enable = true;
    # set the Hyprland and XDPH packages to null to use the ones from the NixOS module
    package = null;
    portalPackage = null;
    systemd.variables = ["--all"];
    settings = {};
    # Raw hyprland.conf content
    extraConfig = ''
      $mod = SUPER

      bind = $mod, RETURN, exec, ghostty
      bind = $mod, F, exec, ungoogled-chromium

      bind = $mod, code:10, workspace, 1
      bind = $mod SHIFT, code:10, movetoworkspace, 1
      bind = $mod, code:11, workspace, 2
      bind = $mod SHIFT, code:11, movetoworkspace, 2
      bind = $mod, code:12, workspace, 3
      bind = $mod SHIFT, code:12, movetoworkspace, 3
      bind = $mod, code:13, workspace, 4
      bind = $mod SHIFT, code:13, movetoworkspace, 4
      bind = $mod, code:14, workspace, 5
      bind = $mod SHIFT, code:14, movetoworkspace, 5
      bind = $mod, code:15, workspace, 6
      bind = $mod SHIFT, code:15, movetoworkspace, 6
      bind = $mod, code:16, workspace, 7
      bind = $mod SHIFT, code:16, movetoworkspace, 7
      bind = $mod, code:17, workspace, 8
      bind = $mod SHIFT, code:17, movetoworkspace, 8
      bind = $mod, code:18, workspace, 9
      bind = $mod SHIFT, code:18, movetoworkspace, 9

      ecosystem:no_update_news = true
      ecosystem:no_donation_nag = true
    '';
  };
}
