{
  config,
  pkgs,
  inputs,
  ...
}:
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
  };
  # TODO: Configure the rest of nvim (see https://nixos.wiki/wiki/Neovim#System-wide_2)
  # configure = {
  #   customRC = ''
  #     set number
  #     set cc=80
  #     set list
  #     set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»
  #     if &diff
  #       colorscheme blue
  #     endif
  #   '';
  #   packages.myVimPackage = with pkgs.vimPlugins; {
  #     start = [ ctrlp ];
  #   };
  # };
}
