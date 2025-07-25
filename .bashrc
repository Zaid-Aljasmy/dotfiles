# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '
PS1='\[\e[38;2;97;175;239m\]$(if [[ $PWD == $HOME ]]; then echo "~ "; else echo "\w "; fi)\[\e[38;2;229;192;123m\]λ\[\e[m\] '

# my alias
# run tlauncher
alias tl='java -jar ~/Documents/tlauncher/TLauncher.jar'
# system
alias ll='ls -la'
alias vi='nvim'
alias network='sudo nmtui'
alias usage='ncdu'
alias aud='alsamixer'
alias bt='acpi'
alias z='zathura'
alias ls='exa --color=always --icons'
alias ll='exa -lah --color=always --icons'
# xbps
alias i='sudo xbps-install -S'
alias u='sudo xbps-install -u xbps; sudo xbps-install -u'
alias q='sudo xbps-query -Rs'
alias r='sudo xbps-remove -R'
alias ro='sudo xbps-remove -o; sudo xbps-remove -O'
# git 
alias shzaid='git remote set-url origin git@github.com:Zaid-Aljasmy/dotfiles.git'
# pfetch
# pfetch
bash ~/.colorscripts/square
