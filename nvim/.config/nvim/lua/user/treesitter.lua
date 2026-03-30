-- formatting and syntax highlighting
vim.pack.add({ 'https://github.com/nvim-treesitter/nvim-treesitter' }, { confirm = false })

-- equivalent to :TSUpdate
require('nvim-treesitter.install').update 'all'

require('nvim-treesitter.config').setup {
  sync_install = true,
  install_dir = vim.fn.stdpath('data') .. '/site',

  modules = {},
  ignore_install = {},

  ensure_installed = {
    'lua',
    'astro',
    'bash',
    'elixir',
    'go',
    'java',
    'javascript',
    'markdown',
    'mdx',
    'rust',
    'typescript',
  },

  auto_install = true, -- autoinstall languages that are not installed yet

  highlight = {
    enable = true,
  },
}
