### Alias

# Git

alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'
alias gb='git  branch'
alias gch='git checkout'
alias gm='git merge'

# Vim
alias v='vim'

alias obsidian-push='rsync -avh --delete --itemize-changes ~/storage/shared/DigitalBraind/ ~/DigitalBraind/ && rclone sync -v ~/DigitalBraind/ obsidian:'

alias obsidian-pull='rclone sync -v obsidian: ~/DigitalBraind/ && rsync -avh --delete --itemize-changes ~/DigitalBraind/ ~/storage/shared/DigitalBraind/'

alias debian-turnon='proot-distro login --user aak debian'
