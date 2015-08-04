# -------------------- #
# DIRECTORY NAVIGATION #
# -------------------- #

# ls made shorter
alias ll='ls -alF'
alias la='ls -A'

# cd made suspenseful (pun intended)
alias ..='cd ..'
alias ...='cd ../..'

# Create dir and change to it
function mkd {
  mkdir -p "$@" && cd "$@"
}

# ----------------------------- #
# DEFAULTS AND TERMINAL-RELATED #
# ----------------------------- #

# Python 3 by default
## To use Python 2, use python2 and pip2 instead
# alias python='python3'
# alias pip='pip3'

# Static server
## From this superuseful Gist: https://gist.github.com/willurd/5720255
alias serve='serve2'
alias serve2='echo "Go to http://localhost:8000/"; python2 -m SimpleHTTPServer 8000'
alias serve3='echo "Go to http://localhost:8000/"; python3 -m http.server 8000'

# ------------- #
# GIT SHORTCUTS #
# ------------- #

alias gl='git log --graph --full-history --all --color --pretty=tformat:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s%x20%x1b[33m(%an)%x1b[0m"'

alias gs="git status"
alias gb="git branch"
alias gd="git diff"

# Update fork from upstream
function guf {
  git checkout master
  git pull upstream master
  git push origin master
}
