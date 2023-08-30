local map = vim.keymap.set

-- Open up the work journal for todday/yesterday
map('n', '<leader>jt', '<cmd>Neorg journal today<cr>', {})
map('n', '<leader>jy', '<cmd>Neorg journal yesterday<cr>', {})
