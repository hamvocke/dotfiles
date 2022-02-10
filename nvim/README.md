## Neovim

My neovim configuration.

## Installation

0. Install neovim
1. install [vim-plug](https://github.com/junegunn/vim-plug)
2. Install [fzf](https://github.com/junegunn/fzf)
3. (Optional) Install [bat](https://github.com/sharkdp/bat) for syntax highlighting in file-search previews
4. (Optional) Install [ripgrep](https://github.com/BurntSushi/ripgrep) for code search
5. run `stow nvim` from this repository's root directory
6. open `nvim`
7. run `:PlugInstall`

## Features & Key Bindings

* Use arrow-key navigation to move line by line
* use `j` and `k` navigation to move by "visual line" (don't skip wrapped lines)
* `Leader` key is `,` (comma)
* `,-e` searches for recently opened files (using fzf.vim)
* `,-p` searches for files in the current directory (fzf.vim)
* `,-c` searches through git commits (fzf.vim)
* `,-f` searches within files and code using `rg` (ripgrep) (fzf.vim)
* `,-l` toggles file browser (NERDTree)
