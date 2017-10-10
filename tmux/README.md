# tmux Configuration

Config files for tmux

## Installation
Install the config files according to the instructions in this repo's top level README.md

## Mac OS Clipboard Integration
If you copy stuff within tmux (using tmux's copy mode) it won't show up in your OS X clipboard out of the box. You can find an in-depth explanation [here](https://robots.thoughtbot.com/tmux-copy-paste-on-os-x-a-better-future). For this config, it simply means you need to install `reattach-to-user-namespace`, e.g.:

    brew install reattach-to-user-namespace

## Color Customization
If you want to experiment with custom colors in your tmux setup, running `./tmux_colors.sh` will list you the names and the look of all colors that are available for you.

