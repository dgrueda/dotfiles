# Set architecture flags
export ARCHFLAGS="-arch x86_64"
# Ensure user-installed binaries take precedence
export PATH="/usr/local/bin:$PATH"
# Load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc

# Set 'nano' as the default editor
export EDITOR=nano

# Colors
RS="\[\033[0m\]"    # reset
HC="\[\033[1m\]"    # hicolor
FRED="\[\033[31m\]" # foreground red
FGRN="\[\033[32m\]" # foreground green
FBLE="\[\033[34m\]" # foreground blue

# Change prompt
PS1=""
PS1+="┌─╼[$FGRN\w$RS]\$(__git_ps1) \n"
PS1+="└╼ $HC\$ $RS"

# Change the terminal title bar to always display the current directory
#PROMPT_COMMAND='echo -ne "\e]0;$(pwd -P)\a"'

# Add aliases and functions
if [ -f ~/.bash_aliases ]; then
  source ~/.bash_aliases
fi

# Needed to show git branch in the directory
# Previously, install:
# curl -o ~/.git-prompt.sh \
#    https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
source ~/.git-prompt.sh

# Add colors to ls
# For light theme use: export LSCOLORS=ExFxBxDxCxegedabagacad
# Color guide:
# The color designators are as follows:
# a black
# b red
# c green
# d brown
# e blue
# f magenta
# g cyan
# h light grey
# A bold black, usually shows up as dark grey
# B bold red
# C bold green
# D bold brown, usually shows up as yellow
# E bold blue
# F bold magenta
# G bold cyan
# H bold light grey; looks like bright white
# x default foreground or background
# 
# The order of the attributes are as follows:
# 1. directory
# 2. symbolic link
# 3. socket
# 4. pipe
# 5. executable
# 6. block special
# 7. character special
# 8. executable with setuid bit set
# 9. executable with setgid bit set
# 10. directory writable to others, with sticky bit
# 11. directory writable to others, without sticky bit
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

