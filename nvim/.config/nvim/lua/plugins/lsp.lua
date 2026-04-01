-- lsp server installation and configuration

-- lsp servers we want to use and their configuration
-- see `:h lspconfig-all` for available servers and their settings
local lsp_servers = {
  astro = {},
  expert = {},
  emmet_ls = {},
  eslint = {},
  lua_ls = {
    -- https://luals.github.io/wiki/settings/ | `:h nvim_get_runtime_file`
    Lua = { workspace = { library = vim.api.nvim_get_runtime_file('lua', true) } },
  },
  prettierd = {},
  rust_analyzer = {},
  svelte = {},
  ts_ls = {},
}

vim.pack.add({
  'https://github.com/neovim/nvim-lspconfig', -- default configs for lsps

  -- NOTE: if you'd rather install the lsps through your OS package manager you
  -- can delete the next three mason-related lines and their setup calls below.
  -- see `:h lsp-quickstart` for more details.
  'https://github.com/mason-org/mason.nvim', -- package manager
  'https://github.com/mason-org/mason-lspconfig.nvim', -- lspconfig bridge
  'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim', -- auto installer
}, { confirm = false })

require('mason').setup()
require('mason-lspconfig').setup()
require('mason-tool-installer').setup {
  ensure_installed = vim.tbl_keys(lsp_servers),
}

-- configure each lsp server on the table
-- to check what clients are attached to the current buffer, use
-- `:checkhealth vim.lsp`. to view default lsp keybindings, use `:h lsp-defaults`.
for server, config in pairs(lsp_servers) do
  vim.lsp.config(server, {
    settings = config,

    -- only create the keymaps if the server attaches successfully
    on_attach = function(_, bufnr)
      vim.keymap.set('n', 'grd', require('fzf-lua').lsp_definitions, { buffer = bufnr, desc = 'Go to definition' })
      vim.keymap.set('n', 'gri', require('fzf-lua').lsp_implementations, { buffer = bufnr, desc = 'Go to implementation' })
      vim.keymap.set('n', 'grt', require('fzf-lua').lsp_typedefs, { buffer = bufnr, desc = 'Go to type definition' })
      vim.keymap.set('n', 'gra', vim.lsp.buf.code_action, { buffer = bufnr, desc = 'Code action' })
      vim.keymap.set('n', 'grn', vim.lsp.buf.rename, { buffer = bufnr, desc = 'Rename' })
      vim.keymap.set('n', 'grr', require('fzf-lua').lsp_references, { buffer = bufnr, desc = 'References' })
      vim.keymap.set('n', 'gO', require('fzf-lua').lsp_document_symbols, { buffer = bufnr, desc = 'Open Document Symbols' })
      vim.keymap.set('n', 'gW', require('fzf-lua').lsp_workspace_symbols, { buffer = bufnr, desc = 'Open Workspace Symbols' })

      vim.keymap.set('n', 'grf', vim.lsp.buf.format, { buffer = bufnr, desc = 'Format' })
    end,
  })
end

