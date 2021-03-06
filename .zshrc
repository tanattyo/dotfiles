#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

setopt nonomatch

[[ -d ~/.rbenv  ]] && \
  export PATH=${HOME}/.rbenv/bin:${PATH} && \
  eval "$(rbenv init -)"

# Source .alias_ssh_agent
test -e "${HOME}/.dotfiles/.alias_ssh_agent"; source "${HOME}/.dotfiles/.alias_ssh_agent"

# Source Prezto
test -e "${HOME}/.dotfiles/.zprezto/init.zsh"; source "${HOME}/.dotfiles/.zprezto/init.zsh"

# alias
# alias - file
alias g='git'
alias c='clear'
alias f='open .'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias ls='ls -G'
alias lst~'ls -ltr'
alias ll='ls -l'
alias rmi='rm -i'
alias up='cd ..; ls -l'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# alias - grep
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'

# alias - docker
alias d='docker'
alias dc='docker-compose'

# alias - others
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# alisa - docker
alias d-bash='. ~/.dotfiles/alias_script/d-bash.sh'
alias dc='docker-compose'
