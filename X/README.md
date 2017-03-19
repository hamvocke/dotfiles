# X configuration

Config files for X

## Installation
Install the config files according to the instructions in this repo's top level README.md

After installing the `.Xresources` (either manually or using `stow`) you need to reload the X server resource database using `xrdb`:
    
    xrdb ~/.Xresources


## Colors
You can define your own colors in `.Xresources`. These colors will then be picked up by several applications, e.g. xterm/urxvt or i3. A good alternative is to simply grab a colorscheme you like from [Chris Kempson's Base16 repo](https://github.com/chriskempson/base16-xresources).

