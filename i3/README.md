# i3 Configuration

Config files for i3 window manager

## Installation
Install the config files according to the instructions in this repo's top level README.md

## Colors
The color configuration for this i3 setup are loaded from xrdb and configured in `.Xresources`. You can install my `.Xresources` from the `X` directory.

## Wallpaper
This i3 config tries to load your wallpaper using `nitrogen`. It will start a `nitrogen` process in the background on each startup to restore any previous config. To utilize this mechanism make sure to install `nitrogen` on your system and set a nice wallpaper.

    sudo pacman -S nitrogen

## i3-gaps
Some options might be exclusive to [i3-gaps](https://github.com/Airblader/i3). Either make sure to use `i3-gaps` on your system or remove the corresponding configurations from the i3 config.
