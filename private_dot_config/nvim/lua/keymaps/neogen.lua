local map = vim.keymap.set

-- Generate a doc block
map('n', '<leader>d', '<cmd>Neogen<cr>', { noremap = true, silent = true })
