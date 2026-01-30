# Neovim

My neovim configuration, based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim). See the kickstart.nvim documentation to get started with the fundamentals. I picked kickstart.nvim after years of messing with my own, basic vim/nvim configuration, as it makes it easy to get started with some otherwise annoying to setup plugins I wanted to include in my vim experience, like LSP support and treesitter. If you need a more simple configuration, you could check out my `vim` configuration in this repo instead.

## Features

* using `lazy.nvim` for managing and installing plugins
* showing git changes in the gutter via `gitsigns.nvim`
* LSP integration
* treesitter for better syntax highlighting, code navigation and editing
* keybinding discovery via `which-key.nvim`
* fuzzy finder via `fzf-lua.nvim`
* file tree via `neo-tree.nvim`
* ... and many more

## Key Bindings

* `<space>` is the leader key. Press it to get an overview of key bindings.

## Requirements

For this configuration to work properly, ensure that the following dependencies are installed:

* neovim >= 0.11
* [ripgrep](https://github.com/BurntSushi/ripgrep)
* [fd](https://github.com/sharkdp/fd)
* [fzf](https://github.com/junegunn/fzf)
* [tree-sitter-cli](https://github.com/tree-sitter/tree-sitter/blob/master/crates/cli/README.md)

## Installation

* Run `stow nvim` from this repository's root directory
* Open `nvim` and wait for `lazy.nvim` to install plugins
* Restart `nvim`
* You're ready to go

