-- file tree browser
vim.pack.add({ 'https://github.com/nvim-tree/nvim-tree.lua' }, { confirm = false })

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local config = {
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
}
require('nvim-tree').setup(config)

vim.keymap.set('n', '<leader>f', ':NvimTreeToggle<CR>', { desc = 'Toggle [F]ile Tree' })
