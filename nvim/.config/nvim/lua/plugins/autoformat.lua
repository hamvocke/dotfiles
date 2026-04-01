-- autoformatting on save
vim.pack.add({
  'https://github.com/stevearc/conform.nvim',
}, { confirm = false })

require('conform').setup {
  format_on_save = {
    timeout_ms = 500,
    lsp_format = 'fallback',
  },
  notify_on_error = true,
  formatters_by_ft = {
    lua = { 'stylua' },
    -- python = { "isort", "black" },
    html = { 'prettierd', 'prettier', stop_after_first = true },
    rust = { 'rustfmt' },
    javascript = { 'prettierd', 'prettier', stop_after_first = true },
    typescript = { 'prettierd', 'prettier', stop_after_first = true },
    elixir = { 'mix' },
    heex = { 'mix' },
  },
}
