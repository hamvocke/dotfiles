# vim Configuration

Config files for vim

## Installation
Install the config files according to the instructions in this repo's top level README.md.

## Plugins
This vim setup relies on [Vundle](https://github.com/VundleVim/Vundle.vim) for plugin handling. If you want to use the `.vimrc` you should either install Vundle first or get rid of all the plugins declared in the `.vimrc`. 

If you decide to go with Vundle you need to install all plugins once. Simply start vim and run `:PluginInstall` to install all declared plugins.

## Autocompletion (via YouCompleteMe)
To enable autocompletion in vim you need to setup `YouCompleteMe` properly. If you don't need autocompletion you should get rid of the `YouCompleteMe` plugin in the `.vimrc`. If you want to use it make sure to follow the [installation instructions](http://vimawesome.com/plugin/youcompleteme#installation) for your operating system.

Usually, this boils down to running `:PluginInstall` once and then executing the plugin's `install.py` with the desired languages passed as parameters. For example:

    cd ~/.vim/bundle/youcompleteme
    ./install.py
