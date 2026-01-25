#!/usr/bin/env bash

abbr "d"="docker"

# grep
abbr "egrep"="egrep --color=auto"
abbr "fgrep"="fgrep --color=auto"
abbr "grep"="grep --color=auto"

# ls
abbr ls='eza --color=always --group-directories-first --icons'
abbr ll='eza -la --header --icons --octal-permissions --group-directories-first'
abbr l='eza -blGF --header --git --color=always --group-directories-first --icons'
abbr llm='eza -lbGd --header --git --sort=modified --color=always --group-directories-first --icons' 
abbr la='eza --long --all --group --group-directories-first'
abbr lx='eza -lbhHigUmuSa@ --time-style=long-iso --git --color-scale --color=always --group-directories-first --icons'
abbr lS='eza -1 --color=always --group-directories-first --icons'
abbr lt='eza --tree --level=2 --color=always --group-directories-first --icons'
abbr l.="eza -a | grep -E '^\.'"
