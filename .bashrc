# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '
PS1='\[\e[38;5;142m\]$(if [[ $PWD == $HOME ]]; then echo "0xFr0g "; else echo "\w "; fi)\[\e[38;5;214m\]>\[\e[m\] '

# my alias

# system
alias ll='ls -la'
alias vi='nvim'
alias network='sudo nmtui'
alias usage='ncdu'
alias aud='alsamixer'
alias bt='acpi'
alias z='zathura'
# xbps
alias i='sudo xbps-install -S'
alias u='sudo xbps-install -u xbps; sudo xbps-install -u; sudo flatpak update -y'
alias q='sudo xbps-query -Rs'
alias r='sudo xbps-remove -R'
alias ro='sudo xbps-remove -o; sudo xbps-remove -O'

# pfetch
pfetch
