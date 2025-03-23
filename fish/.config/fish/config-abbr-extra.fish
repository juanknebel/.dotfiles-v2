# tmux
abbr txls 'tmux ls'
abbr txs "tmux new -As (pwd | sed 's/.*\///g')"
abbr txnw 'tmux new -As'
abbr txat 'tmux a -t'
abbr txas "tmux a -t (pwd | sed 's/.*\///g')"
abbr txzoidberg "tmux new -d -s zoidberg 'ssh elmo@192.168.1.56 -t fish'"

# Open files in neovim using skim
abbr vsk 'fd --type f --hidden --exclude .git | sk-tmux --prompt "==>" --preview "bat {} --color=always"| xargs nvim
'
# Using fzf
abbr vf "fd --type f --hidden --exclude .git | fzf-tmux -p | xargs nvim"
abbr vfr "fd --type f --hidden --exclude .git | fzf-tmux -p --reverse | xargs nvim"


# skim
#abbr skpr 'sk --preview "preview.sh {}"'
abbr skpr 'sk --preview "bat {} --color=always"'
#abbr skim 'sk --ansi -i -c \'rg --color=always --line-number "{}"\''
#abbr skimpr 'sk --ansi -i -c \'rg --color=always --line-number "{}"\' --preview "preview.sh {}"'
#abbr skimpr 'sk --ansi -i -c \'rg --color=always --line-number "{}"\' --preview "batcat {} --color=always"'
