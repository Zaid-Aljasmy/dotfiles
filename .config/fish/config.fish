set -g fish_greeting ''

if status is-interactive
    
    if not set -q DISPLAY; and test (tty) = /dev/tty1
        exec sway
    end
end

# prompt
function fish_prompt
    
    set_color blue
    if test $PWD = $HOME
        echo -n "~ "
    else
        set_color blue
        echo -n (prompt_pwd) ""
    end

    
    if command git rev-parse --is-inside-work-tree >/dev/null 2>&1
        set branch (git branch --show-current 2>/dev/null)
        if test -n "$branch"
            set_color red
            echo -n "$branch "
        end
    end

    
    set_color normal
    echo -n "> "      # or λ
end

# aliases
alias shstart="eval (ssh-agent -c); ssh-add ~/.ssh/id_github"
alias tl='java -jar ~/Documents/tlauncher/TLauncher.jar'
alias ll='ls -lah'
alias vi='nvim'
alias network='sudo nmtui'
alias usage='ncdu'
alias aud='alsamixer'
alias bt='acpi'
alias z='zathura'

alias ls='eza --color=always --icons'
alias ll='eza -lah --color=always --icons'

alias i='sudo apt update && sudo apt install'
alias u='sudo apt update && sudo apt upgrade -y'
alias q='apt search'
alias r='sudo apt remove --purge'
alias ro='sudo apt autoremove && sudo apt clean'

alias shzaid='git remote set-url origin git@github.com:Zaid-Aljasmy/dotfiles.git'

# bash ~/.colorscripts/elfman
# pfetch
