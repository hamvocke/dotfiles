# if you want to profile your zsh startup time
# uncomment the following line and run zprof as the first command in a new shell
# zmodload zsh/zprof

export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:~/.dotnet:~/.local/bin

# use 256 color terminal
export TERM=xterm-256color

# use vim as standard editor
export VISUAL=nvim
export EDITOR="$VISUAL"

# I'm a weirdo. I like vim but prefer emacs mode on the terminal.
# Since zsh automatically enables vi mode when you set 'vi' as your standard $EDITOR, let's explicitly request emacs mode.
bindkey -e

#------------------------------------------------------
# Aliases
#------------------------------------------------------
alias serve='python -m http.server'
alias de='setxkbmap de'
alias us='setxkbmap us'
alias lnks='~/dev/lnks/lnks.sh'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../../'

alias ls="ls --color=auto"
alias ll="ls -asl"

# print current week number
alias week='date +%V'

# use nvim if available
if [ -x "$(command -v nvim)" ]; then
    alias vim='nvim'
fi

#------------------------------------------------------
# Functions
#------------------------------------------------------

# Find out what's running on a given port
whatsonport() {
    lsof -i tcp:$1
}

# Enable nvm in the current shell.
# Loading nvm by default is slow, and most of the time we don't need it.
loadnvm() {
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
}

# load OS specific config
case `uname` in
  Darwin)
    source $HOME/.zshrc-mac
  ;;
  Linux)
    source $HOME/.zshrc-linux
  ;;
  FreeBSD)
    # commands for FreeBSD go here
  ;;
esac


export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

#------------------------------------------------------
# Keybindings, Autocomplete
#------------------------------------------------------

# add fzf keybindings and autocompletion
if [ -x "$(command -v fzf)" ]; then
    source /usr/share/doc/fzf/examples/key-bindings.zsh
    source /usr/share/doc/fzf/examples/completion.zsh
    # Catppuccin Mocha colors for fzf
    export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"
fi



#------------------------------------------------------
# Additional tools (version managers, CLI tools, ...)
#------------------------------------------------------

export FLYCTL_INSTALL="/home/ham/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"


# Prompt
eval "$(starship init zsh)"
