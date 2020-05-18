#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

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
