vim.pack.add({
  'https://github.com/folke/todo-comments.nvim', -- highlight TODO/INFO/WARN comments
}, { confirm = false })

require('todo-comments').setup()
