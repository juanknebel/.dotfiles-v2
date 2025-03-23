#
#    ___ _   _  ___   _   _   _   __

#     | | | | / /_\ \|  \| | | |/ /
#     | | | | |  _  || . ` | |    \
# /\__/ / |_| | | | || |\  | | |\  \
# \____/ \___/\_| |_/\_| \_/ \_| \_/
#
# Fish configurations for a aliases and abbr

### Aliases

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# Changing "ls" to "eza"
alias ls="eza --icons"
alias la="eza --icons -a"
alias ll="eza -l --icons --git -a"
alias lr="eza -l --sort modified --icons --git -a"
alias lt="eza --tree --level=2 --long --icons --git"

# Colorize grep output (good for log files)
# alias grep='grep --color=auto'
alias grep='rg'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Common
alias ip="ip -color"
alias tarnow='tar -acf '
alias untar='tar -xvf '
alias wget='wget -c '
alias cl='clear'
alias http="xh"

### Abbr

abbr chead 'curl -s -D - -o  /dev/null'

# Setting extra abbrs
set ABBR_EXTRA_CONFIG (dirname (status --current-filename))/config-abbr-extra.fish
if test -f $ABBR_EXTRA_CONFIG
  source $ABBR_EXTRA_CONFIG
end

# Setting NVIM configurations
set NVIM_ABBR_CONFIG (dirname (status --current-filename))/config-abbr-nvim.fish
if test -f $NVIM_ABBR_CONFIG
  source $NVIM_ABBR_CONFIG
end
