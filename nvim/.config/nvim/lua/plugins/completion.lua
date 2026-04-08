-- completion engine
vim.pack.add({ 'https://github.com/saghen/blink.cmp' }, { confirm = false })

require('blink.cmp').setup {
  completion = {
    documentation = {
      auto_show = true,
    },
    list = {
      selection = { auto_insert = false, preselect = false },
    },
  },
  keymap = {
    preset = 'enter',
  },
  sources = {
    default = { 'lsp', 'path', 'snippets', 'buffer' },
  },
  fuzzy = {
    implementation = 'lua',
  },
}

-- snippets
vim.pack.add({ 'https://github.com/rafamadriz/friendly-snippets' }, { confirm = false })
