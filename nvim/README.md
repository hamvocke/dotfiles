# Neovim

My neovim configuration, based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim). See the kickstart.nvim documentation to get started with the fundamentals. I picked kickstart.nvim after years of messing with my own, basic vim/nvim configuration, as it makes it easy to get started with some otherwise annoying to setup plugins I wanted to include in my vim experience, like LSP support and treesitter. If you need a more simple configuration, you could check out my `vim` configuration in this repo instead.

## Features

* using `lazy.nvim` for managing and installing plugins
* showing git changes in the gutter via `gitsigns.nvim`
* LSP integration
* treesitter for better syntax highlighting, code navigation and editing
* autocompletion via `nvim-cmp`
* code snippets via `luasnip` and `friendly-snippets`
* keybinding discovery via `which-key.nvim`
* fuzzy finder via `telescope.nvim`
* file tree via `neo-tree.nvim`
* ... and many more

## Key Bindings

* `<space>` is the leader key. Press it to get an overview of key bindings.

## Installation

* Install neovim (> 0.8)
* Run `stow nvim` from this repository's root directory
* (Optional) Install [ripgrep](https://github.com/BurntSushi/ripgrep) for file search
* Open `nvim` and wait for `lazy.nvim` to install plugins
* Restart `nvim`
* You're ready to go

