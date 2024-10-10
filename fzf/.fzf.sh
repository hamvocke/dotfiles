# Set up fzf keybindings, autocompletion, and schmanzy colors
#
source <(fzf --zsh)

# Set some spiffy colors (Root Loops style!)
export FZF_DEFAULT_OPTS=" \
--color=bg+:#101526,bg:#101526,spinner:#ceb5fd,hl:#fb80aa \
--color=fg:#8d9cca,header:#ceb5fd,info:#b5d427,pointer:#ceb5fd \
--color=marker:#fda7c1,fg+:#dde2f2,prompt:#4d5c8a,hl+:#fda7c1"
