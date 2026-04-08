-- formatting and syntax highlighting
vim.pack.add({ 'https://github.com/nvim-treesitter/nvim-treesitter' }, { confirm = false })

-- equivalent to :TSUpdate
require('nvim-treesitter.install').update 'all'

local languages = {
  'lua',
  'astro',
  'bash',
  'elixir',
  'go',
  'java',
  'javascript',
  'markdown',
  'svelte',
  'rust',
  'typescript',
}

require('nvim-treesitter').install(languages)

vim.api.nvim_create_autocmd('FileType', {
  pattern = { '<filetype>' },
  callback = function()
    -- Enable treesitter highlighting and disable regex syntax
    vim.treesitter.start()

    -- Enable treesitter-based indentation
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})
