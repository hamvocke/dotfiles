# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ -e /home/ham/.nix-profile/etc/profile.d/nix.sh ]; then . /home/ham/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

. "$HOME/.cargo/env"
