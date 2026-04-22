-- formatting and syntax highlighting
vim.pack.add({ { src = 'https://github.com/nvim-treesitter/nvim-treesitter', version = 'main' } }, { confirm = false })

-- equivalent to :TSUpdate
require('nvim-treesitter.install').update 'all'

local languages = {
  'astro',
  'bash',
  'comment',
  'diff',
  'dockerfile',
  'eex',
  'elixir',
  'gitcommit',
  'gitignore',
  'go',
  'heex',
  'html',
  'java',
  'javascript',
  'json',
  'lua',
  'markdown',
  'markdown_inline',
  'nix',
  'svelte',
  'rust',
  'sql',
  'terraform',
  'typescript',
  'vim',
  'vimdoc',
  'yaml',
}

require('nvim-treesitter').install(languages)

vim.api.nvim_create_autocmd('FileType', {
  callback = function()
    -- Enable treesitter highlighting and disable regex syntax
    pcall(vim.treesitter.start)

    -- Enable treesitter-based indentation
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})
