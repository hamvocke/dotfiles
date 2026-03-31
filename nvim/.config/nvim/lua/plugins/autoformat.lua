-- autoformattinf on save
vim.pack.add({
  'https://github.com/stevearc/conform.nvim',
}, { confirm = false })

require('conform').setup {
  notify_on_error = false,
  format_on_save = {
    timeout_ms = 500,
    lsp_format = 'fallback',
  },
  formatters_by_ft = {
    lua = { 'stylua' },
    -- python = { "isort", "black" },
    javascript = { 'prettierd', 'prettier', stop_after_first = true },
    typescript = { 'prettierd', 'prettier', stop_after_first = true },
    elixir = { 'mix' },
    heex = { 'mix' },
  },
}
