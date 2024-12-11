{config, pkgs, lib, ...}:

{
  home.packages = with pkgs; [ neovim ];

  programs.neovim = {
    extraConfig = lib.fileContents "~/.config/nvim/init.vim";
  };
}

