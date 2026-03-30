-- fuzzy finder & file picker
vim.pack.add({
  'https://github.com/nvim-tree/nvim-web-devicons', -- icons (nerd font)
  'https://github.com/ibhagwan/fzf-lua', -- the fuzzy finder
}, { confirm = false })

local fzf = require 'fzf-lua'

fzf.setup {}
vim.keymap.set('n', '<leader>sh', fzf.helptags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sk', fzf.keymaps, { desc = '[S]earch [K]eymaps' })
vim.keymap.set('n', '<leader>sf', fzf.files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sb', fzf.builtin, { desc = '[S]earch [B]uiltin Commands' })
vim.keymap.set('n', '<leader>sw', fzf.grep_cword, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', fzf.live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', fzf.diagnostics_workspace, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', fzf.resume, { desc = '[S]earch [R]esume' })
vim.keymap.set('n', '<leader>sn', fzf.commands, { desc = '[S]earch [N]eovim Commands' })
vim.keymap.set('n', '<leader>sl', fzf.lsp_finder, { desc = '[S]earch [L]SP locations' })
vim.keymap.set('n', '<leader>s.', fzf.oldfiles, { desc = '[S]earch Recent Files' })
vim.keymap.set('n', '<leader><leader>', fzf.buffers, { desc = '[ ] Find open buffers' })

