-- keybinding helper
vim.pack.add({ 'https://github.com/folke/which-key.nvim' }, { confirm = false })

require('which-key').setup {
  spec = {
    { '<leader>s', group = '[S]earch', icon = { icon = '', color = 'green' } },
    { '<leader>h', group = 'Git [H]unk', icon = { icon = '', color = 'green' } },
  },
}
