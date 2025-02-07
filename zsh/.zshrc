# if you want to profile your zsh startup time
# uncomment the following line and run zprof as the first command in a new shell
# zmodload zsh/zprof

export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# use 256 color terminal
export TERM=xterm-256color

# use vim as standard editor
export VISUAL=nvim
export EDITOR="$VISUAL"

# I'm a weirdo. I like vim but prefer emacs mode on the terminal.
# Since zsh automatically enables vi mode when you set 'vi' as your standard $EDITOR, let's explicitly request emacs mode.
bindkey -e

# Press <delete> to, well, delete characters instead of producing a ~
bindkey "^[[3~" delete-char


#------------------------------------------------------
# Better History
#------------------------------------------------------
setopt SHARE_HISTORY        # share history between all sessions
setopt HIST_IGNORE_SPACE    # don't record commands that start with a space
setopt INC_APPEND_HISTORY   # write to $HISTFILE immediately, not just when exiting the shell
setopt HIST_IGNORE_ALL_DUPS # remove old duplicates from history
setopt HIST_VERIFY          # don't execute immediately when picking from history
HISTSIZE=50000              # store more than the default 10_000 entries
SAVEHIST=$HISTSIZE          # and also store all these entries in our $HISTFILE

#------------------------------------------------------
# Aliases
#------------------------------------------------------
alias serve='python -m http.server'
alias de='setxkbmap de'
alias us='setxkbmap us'
alias lnks='~/.bookmarks/lnks.sh'

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

# Convert a bunch of images to a single PDF
# Requires imagemagick to be installed
# Example: img2pdf 2025-01-01-* 2025-01-01-world-domination-plans.pdf
img2pdf() {
  magick $1 -auto-orient $2
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
# Autocompletion
#------------------------------------------------------

zmodload zsh/complist
autoload -U compinit; compinit
_comp_options+=(globdots)   # include hidden files
setopt MENU_COMPLETE        # Automatically highlight first element of completion menu
setopt AUTO_LIST            # Automatically list choices on ambiguous completion.


# Use select menu for completions
zstyle ':completion:*' menu select

# Autocomplete options when completing a '-'
zstyle ':completion:*' complete-options true

# Style group names a little nicer
zstyle ':completion:*:*:*:*:descriptions' format '%F{green}↓ %d %f'

# Group completion results by type
zstyle ':completion:*' group-name ''

# Set up fzf for general auto-completion shenanigans, if it's installed
FZF_CONFIG=~/.fzf.sh
if [[ -x "$(command -v fzf)" ]] && [[ -f "$FZF_CONFIG" ]]; then
  source "$FZF_CONFIG"
fi

#------------------------------------------------------
# Additional tools (version managers, CLI tools, ...)
#------------------------------------------------------

# Prompt
eval "$(starship init zsh)"

# direnv
eval "$(direnv hook zsh)"

# Mise
if [ -f '~/.local/bin/mise' ]; then
  eval "$(~/.local/bin/mise activate zsh)"
fi
