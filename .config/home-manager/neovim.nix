{config, pkgs, lib, ...}:

{
  home.packages = with pkgs; [ neovim ];

  programs.neovim = {
    plugins = with pkgs.vimPlugins; [
        lazy-nvim
    ];
  };
}

