# Alacritty Configuration

Config files for [alacritty](https://alacritty.org)

## Installation
Install the config files according to the instructions in this repo's top level README.md

## Colors & Fonts
Since alacritty is your terminal, it acts as a foundation for most of the look and feel in all my dotfiles. You want to make sure that you keep color schemes consistent across your terminal (i.e. alacritty's configuration) and other tools (e.g. nvim). Tmux should adapt to your terminal's colors without further ado.

Also, make sure that you've got the right fonts installed - or you might get some unpleasant fallback. In this configuration I'm using [Fira Code](https://github.com/tonsky/FiraCode) but you can define whatever font you like.

I'm trying to keep color schemes localized in the `colors/` directory, that way they can easily be imported into `alacritty.yml` and swapped without a lot of fuzz.
