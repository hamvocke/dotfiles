# X configuration

Config files for X

## Installation
Install the config files according to the instructions in this repo's top level README.md

After installing the `.Xresources` (either manually or using `stow`) you need to reload the X server resource database using `xrdb`:
    
    xrdb ~/.Xresources

For locking the screen automatically the configuration relies on `xautolock` (will be started automatically in the `.xinitrc`) so make sure you install it accordingly or configure a different locking mechanism (like `xscreensaver`).


## Colors
You can define your own colors in `.Xresources`. These colors will then be picked up by several applications, e.g. xterm/urxvt or i3. A good alternative is to simply grab a colorscheme you like from [Chris Kempson's Base16 repo](https://github.com/chriskempson/base16-xresources).


## urxvt pasting with `Ctrl-Shift-V`
I've modified urxvt to disable `iso14755` mode to allow pasting with `C-V` (i.e. `Ctrl-Shift-V`) instead of `C-M-v`. To make use of this install `urxvt-perls` on your system.
