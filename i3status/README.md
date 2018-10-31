# i3status

Config files for i3status to be displayed in i3bar.

## Installation
Install the config files according to the instructions on this repo's top level README.md


## Font Icons
This config uses unicode characters and relies on a compatible icon font to be installed. I've only tested it with font awesome, others might work as well. Make sure to either install an icon font on your system or tweak the config file to not use special unicode characters.

    yaourt -S ttf-font-awesome-4

## Colors
I haven't yet found a way to read the colors in use (e.g. for *good*, *degrading* and *bad* status) from `.Xresources`. That's why you'll have to keep them in sync manually once you change your colorscheme in `.Xresources`. 
