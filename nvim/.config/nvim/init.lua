require 'plugins.options'
require 'plugins.treesitter'
require 'plugins.completion'
require 'plugins.autoformat'
require 'plugins.lsp'
require 'plugins.picker'
require 'plugins.whichkey'
require 'plugins.todo'
require 'plugins.gitsigns'
require 'plugins.statusline'

-- auto-update plugins on startup
-- vim.pack.update()

-- highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.hl.on_yank {
      higroup = 'Search',
    }
  end,
})
