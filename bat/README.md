# bat Configuration

Config files for `bat`.

This configures `bat` to use a *Catppuccin Mocha* as its color scheme for syntax highlighting.

You can install more color schemes by adding them to the `themes/` directory and running `bat cache --build`. To ensure that your themes are installed propery, check the output of `bat --list-themes` and see if your theme shows up. You can then set it in your `bat`'s configuration file.

Since `bat` is used by a lot of tools under the hood (e.g. `delta` for paging/diffing in `git`, or as previewer in `fzf`, this will make sure that quite a lot of other tools play nicely with our terminal colors.

## Installation
Install the config files according to the instructions in this repo's top level README.md

