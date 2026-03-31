# Neovim

My neovim configuration, using neovim 0.12 capabilities.

Started using [minimal.nvim](https://github.com/Hashino/minimal.nvim).

## Features

* using neovim's native `vim.pack` plugin manager for managing and installing plugins
* LSP integration
* treesitter for better syntax highlighting, code navigation and editing
* showing git changes in the gutter via `gitsigns.nvim`
* keybinding discovery via `which-key.nvim`
* fuzzy finder and picker via `fzf-lua.nvim`
* statusbar via `lualine.nvim`
* autoformatting via `conform.nvim`
* completions and snippets via `blink.cmp`

## Key Bindings

`<space>` is the leader key. Press it to get an overview of key bindings
provided by `which-key`.

I'm trying to stick to native nvim bindings as much as possible.

Some examples:

* `gr` will trigger LSP-based actions
  * `grf`: Format current buffer
  * `grt`: Go to Reference
  * `grd`: Go to Definition
  * `gra`: Code Actions
  * `grn`: Rename
* `<leader>s` will trigger general search functionality via a picker
  * `<leader>sf`: Search files
  * `<leader>sg`: Search by grep
  * `<leader>sr`: Resume previous search
  * `<leader><leader>`: Find open buffers
  * `<leader>sk`: Search keymaps (allows you to discover other key bindings)
* `<leader>h` allows you to interact with git **h**unks
  * `<leader>hp`: preview current git hunk
  * `<leader>hr`: reset current git hunk
  * `<leader>hs`: stage current git hunk
  * `<leader>hu`: undo staging current git hunk
* `K` will show hover documentation for the symbol under the cursor
* `<C>-s` will open parameter help
* `<C>-<space>` will open autocomplete
  * use `<Enter>` to accept a suggestion
  * use arrow keys to go through suggestions
  * use `<Escape>` to dismiss suggestions

## Requirements

For this configuration to work properly, ensure that the following dependencies are installed:

* neovim >= 0.12
* [ripgrep](https://github.com/BurntSushi/ripgrep)
* [fd](https://github.com/sharkdp/fd)
* [fzf](https://github.com/junegunn/fzf)
* [tree-sitter-cli](https://github.com/tree-sitter/tree-sitter/blob/master/crates/cli/README.md)

## Installation

* Run `stow nvim` from this repository's root directory
* Open `nvim` and wait for `lazy.nvim` to install plugins
* Restart `nvim`
* You're ready to go

