if status is-interactive
    # Commands to run in interactive sessions can go here

    function fish_greeting
        fastfetch
    end

    starship init fish | source
    zoxide init fish --cmd cd | source

    # https://github.com/sharkdp/vivid
    set -gx LS_COLORS "$(vivid generate catppuccin-mocha)"

    enable_transience

    # https://github.com/eza-community/eza
    alias ls="eza --color=always --group-directories-first --icons --git-ignore --git"
    alias ll="eza --color=always --group-directories-first --icons --header --long --git-ignore --git"
    alias la="eza -a --color=always --group-directories-first --icons --header --long --git-ignore --git"
    alias lg="eza -a --color=always --group-directories-first --icons --header --long --git"
    alias tree="eza -T -a --color=always --group-directories-first --icons --git-ignore"

    # https://github.com/sharkdp/fd
    alias find="fd --hidden --exclude .git --color=always"

    alias vim="nvim"

    alias gs="git status"
    alias gd="git diff"
    alias ga="git add"
    alias gc="git commit"
    alias gp="git push"
    alias gu="git pull"

    # https://github.com/tldr-pages/tldr
    alias tldr="tldr -Len"

    # https://github.com/BurntSushi/ripgrep 
    alias rg="rg --hidden"

    # https://github.com/sharkdp/bat
    alias cat="bat --style=plain"

end
