-- completion engine
vim.pack.add({ 'https://github.com/saghen/blink.cmp' }, { confirm = false })

require('blink.cmp').setup {
  completion = {

    documentation = {
      auto_show = false,
    },
  },

  keymap = {
    preset = 'enter',
  },

  fuzzy = {
    implementation = 'lua',
  },
}

-- snippets
vim.pack.add({ 'https://github.com/rafamadriz/friendly-snippets' }, { confirm = false })
