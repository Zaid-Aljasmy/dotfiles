set -g fish_greeting ''

if status is-interactive
    if not set -q DISPLAY; and test (tty) = /dev/tty1
        set -x GTK_THEME Tokyonight-Dark
        set -x ICON_THEME Tokyonight-Dark
        set -x GTK_FONT_NAME "JetBrainsMono Nerd Font 15"
        set -x XCURSOR_THEME Apple-X-Cursor
        set -x XCURSOR_SIZE 24
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

    set_color red
    echo -n "> " # or λ
end

# fzf extension

eval "$(fzf --fish)"
# Tokyo Night theme for fzf with transparency:
set -gx FZF_DEFAULT_OPTS '--color=fg:#a9b1d6,bg:-1,hl:#7aa2f7,fg+:#c8d3ea,bg+:#32344a,hl+:#7aa2f7,info:#449dab,prompt:#449dab,pointer:#7aa2f7,marker:#e0af68,spinner:#ad8ee6,separator:#444b6a,border:#444b6a,header:#787c99 --info=right --prompt="Search: "'
# fzf colors (https://github.com/junegunn/fzf/wiki/Color-schemes) 

# bat tool
export BAT_THEME="ansi"

# aliases
alias mnt="sudo mount /dev/sdb1 ~/usb"
alias umnt="sudo umount /dev/sdb1 ~/usb"
alias shstart="eval (ssh-agent -c); ssh-add ~/.ssh/id_github"
alias tl='java -jar ~/Documents/tlauncher/TLauncher.jar'
alias ll='ls -lah'
alias vi='nvim'
alias vim='vim.basic'
alias network='sudo nmtui'
alias usage='ncdu'
alias aud='alsamixer'
alias bt='acpi'
alias z='zathura'

alias ls='eza --group-directories-first --color=always --icons'
alias ll='eza -lah --group-directories-first --color=always --icons'

alias i='sudo apt update && sudo apt install'
alias u='sudo apt update && sudo apt upgrade'
alias f='apt search'
alias r='sudo apt remove --purge'
alias rc='sudo apt autoremove && sudo apt clean'

alias shzaid='git remote set-url origin git@github.com:Zaid-Aljasmy/dotfiles.git'

# Neovim opt
set -U fish_user_paths $fish_user_paths /opt/nvim-linux-x86_64/bin

set -gx PATH $PATH $HOME/.config/emacs/bin
set -x TERMINAL foot
# bash ~/.colorscripts/elfman
# pfetch
