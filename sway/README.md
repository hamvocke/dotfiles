# sway Configuration

Config files for sway, a wayland compositor and window manager similar to i3

## Why sway?
You'll see that this config is fairly close to the `i3wm` config in the `i3/` directory. Sway intends to be a drop-in replacement for i3, and is largely compatible with existing i3 configurations. If you want to use Wayland instead of x11, I recommend giving sway a shot. It'll feel familiar and come with the same key bindings as i3 but doesn't rely on x11.

## Installation
Install the config files according to the instructions in this repo's top level README.md

## Change color scheme
The color scheme is defined in the `config` file. It's using colors picked from one of the many [base16-sway](https://github.com/rkubosz/base16-sway) color schemes.

## Status bar
The status bar on top is defined in the `bar {}` declaration. It works well with i3status (I've got a config for that in this repo) but you could swap it for any other status bar if you prefer.

## Fonts
I'm setting special fonts (e.g. `Fira Code`) in this configuration that you might have to install first. If you install the Fira Code flavor from [Nerd Fonts](https://www.nerdfonts.com/), you'll automatically get all the icon glyphs required for the status bar.

## Display Brightness
I've set up brightness keys to control your display's brightness via `brightnessctl`. Make sure to [install it](https://github.com/Hummer12007/brightnessctl/) if you want to use this functionality.
