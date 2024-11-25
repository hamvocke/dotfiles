# Set up fzf keybindings, autocompletion, and schmanzy colors
source <(fzf --zsh)

# Set some spiffy colors (Root Loops style!)
export FZF_DEFAULT_OPTS="  --color=fg:#e7ebf6,fg+:#f5f6fb,bg:#1a2137,bg+:#2e3859 \
--color=hl:#28c8b1,hl+:#30e1c7,info:#f49437,marker:#a1bd22 \
--color=prompt:#fb80aa,spinner:#bd97fc,pointer:#bd97fc,header:#56b8f7 \
--color=border:#586899,label:#bcc6e3,query:#e7ebf6"
