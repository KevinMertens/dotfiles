if status is-interactive
    # Commands to run in interactive sessions can go here

    function fish_greeting
        fastfetch
    end

    starship init fish | source
    zoxide init fish --cmd cd | source

    # enable_transience

    alias ls="eza --color=always --group-directories-first --icons --git-ignore --git"
    alias ll="eza --color=always --group-directories-first --icons --header --long --git-ignore --git"
    alias la="eza -a --color=always --group-directories-first --icons --header --long --git-ignore --git"
    alias tree="eza -T -a --color=always --group-directories-first --icons --git-ignore"

    alias vim="nvim"
    alias vi="nvim"
    alias nano="nvim"

    alias gs="git status"
    alias gd="git diff"
    alias ga="git add"
    alias gc="git commit"
    alias gp="git push"
    alias gu="git pull"

    alias tldr="tldr -Len"
    alias rg="rg --hidden"

end
