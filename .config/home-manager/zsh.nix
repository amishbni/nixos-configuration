{config, pkgs, lib, ...}:

{
  home.packages = with pkgs; [ zsh ];

  programs.zsh = {
    enable = true;
    enableCompletion = true;

    oh-my-zsh = {
      enable = true;
    };

    autosuggestion = {
      enable = true;
    };

    syntaxHighlighting = {
      enable = true;
    };

    history = {
      size = 1000000;
      save = 1000000;
      path = "$HOME/.zsh_history";
    };

    shellAliases = {
      update = "sudo nixos-rebuild switch";
    };

    initExtra = ''
      # Powerlevel10k Zsh theme  
      source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme  
      test -f ~/.config/zsh/.p10k.zsh && source ~/.config/zsh/.p10k.zsh  
    '';
  };
}

