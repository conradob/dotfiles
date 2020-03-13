#!/bin/bash

alias c="clear"
alias e="exit"
alias psa="ps aux"
alias psag="ps aux | grep"
alias k9="kill -9"
alias hosts="sudo vim /etc/hosts"
alias src='source ~/.zshrc'

# ls alias
alias ls="exa"
alias l="exa"
alias lg="exa -la --group-directories-first"
alias ll="exa -l"
alias la="exa -a"
alias lha="exa -lha"
alias lt="exa -T"
alias lag="exa -lha --git"

# too lazy to cd back
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../../"

# replace vim with neovim
alias vi="NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim"
# alias vim="NVIM_TUI_ENABLE_TRUE_COLOR=1 NODE_PATH=. nvim"

# docker
alias dps="docker ps --format \"{{.ID}}: {{.Names}} {{.Ports}}\""
alias drs="docker rm `docker ps --no-trunc -aq`"
alias dri="docker rmi $(docker images --format \"{{.ID}}\")"
alias dc="docker-compose"

# tmux
alias tmux='tmux -2' # give -2 flag to tmux so it runs with 256 colors
alias tbase='tmux a -t base'
alias tnbase='tmux new -s base'
alias tvs='tmux a -t vscode'
alias tnvs='tmux new -s vscode'

# config files
alias vicfg='vi ~/.config/nvim/init.vim ~/.config/nvim/plugins.vim'
alias alcfg='vi ~/.bash_aliases ~/.bash_plugins/git.plugin.sh ~/.bashrc ~/.profile'
alias sbash='source ~/.bashrc'

if [[ -f .env ]]; then
    alias dotenv=". ./.env"
else
    alias dotenv="echo No dotenv file"
fi

# set up command aliases
if [[ -f ~/.bash_plugins/git.plugin.sh ]]; then
    source ~/.bash_plugins/git.plugin.sh
fi

if [[ -f ~/.unicode-cheat-sheet.sh ]]; then
    alias unicode="~/.unicode-cheat-sheet.sh"
else
    alias unicode="echo No unicode file"
fi

# psql
alias psql="PAGER='pspg -s 6 --no-mouse' psql"
