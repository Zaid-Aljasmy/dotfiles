# .config/fish/config.fish

set -g fish_greeting ''

function fish_prompt
    echo -n (printf '\033[38;2;122;162;247m')
    if test $PWD = $HOME
        echo -n "~ "
    else
        echo -n (prompt_pwd) ""
    end
    echo -n (printf '\033[38;2;224;175;104m')
    echo -n "> "    # or λ
    echo -n (printf '\033[0m')
end

alias tl='java -jar ~/Documents/tlauncher/TLauncher.jar'
alias ll='ls -lah'
alias vi='nvim'
alias network='sudo nmtui'
alias usage='ncdu'
alias aud='alsamixer'
alias bt='acpi'
alias z='zathura'

alias ls='exa --color=always --icons'
alias ll='exa -lah --color=always --icons'

alias i='sudo xbps-install -S'
alias u='sudo xbps-install -u xbps; and sudo xbps-install -u'
alias q='sudo xbps-query -Rs'
alias r='sudo xbps-remove -R'
alias ro='sudo xbps-remove -o; and sudo xbps-remove -O; and sudo xbps-remove -O -O'

alias shzaid='git remote set-url origin git@github.com:Zaid-Aljasmy/dotfiles.git'

bash ~/.colorscripts/elfman

