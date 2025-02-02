dotfiles
========

A collection of my personal dotfiles.

Here's a little preview of what it looks like with a gorgeous
[**Root Loops theme**](https://rootloops.sh) enabled.

![tmux screenshot](screenshot.png)

Installation
------------

Your first step is to clone this repository:

    git clone https://github.com/hamvocke/dotfiles.git ~/.dotfiles

### Manual Installation

Create symbolic links for the configurations you want to use, e.g.:

    ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc

### Using [GNU Stow](https://www.gnu.org/software/stow/) _(recommended)_

Install GNU Stow _(if not already installed)_

    Mac:      brew install stow
    Ubuntu:   apt-get install stow
    Fedora:   yum install stow
    Arch:     pacman -S stow

Then simply use `stow` to install the dotfiles you want to use:

    cd ~/.dotfiles
    stow vim
    stow tmux

Consistent colors
-----------------

My approach to using consistent colors in my terminal experience is to define my preferred color sheme **once** at the terminal emulator level and then tell all applications I use (tmux, vim, bat, ...) to inherit those colors as much as possible. Unfortunately, a lot of modern CLI applications think they're better off inventing their own way of doing things which sometimes forces me to keep multiple color scheme declarations in sync. 

In practice this means that I use [Root Loops](https://rootloops.sh) to find a color scheme I like, set it for my terminal emulator of choice, and use schemes for CLI applications that simply use the 16 ANSI colors that my terminal declares. Only when that's not an option (looking at you, `fzf`) I provide a custom color scheme that matches my terminal color scheme.

I currently use [this Root Loops recipe](https://rootloops.sh/?sugar=8&colors=9&sogginess=4&flavor=0&fruit=9&milk=1).

> [!TIP]
> If you fancy generating your own snazzy color scheme, go and check out [Root Loops](http://rootloops.sh).

Fonts
-----

I'm relying on Nerd Fonts in some of my configurations. These are special fonts that come with extra glyphs that allow you to display small icons, UI elements and other fancy stuff on the command line. You don't have to use these, but if you don't some things could look a little less good. You can simply [download your Nerd Font of choice over here](https://www.nerdfonts.com).

Additional configuration
------------------------

Some of the configurations need additional setup or configuration. If that's the case you can find a `README.md` file in the application's directory. Make sure to take a look at it to see what else there is to do to make the configuration work on your system.
