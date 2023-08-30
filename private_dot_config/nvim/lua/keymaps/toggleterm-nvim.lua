local map = vim.keymap.set

local opts = { buffer = 0 }

map('t', '<esc>', [[<C-\><C-n>]], opts)
map('t', 'jk', [[<C-\><C-n>]], opts)
map('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
map('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
map('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
map('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
map('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
map('n', '<leader>t', '<cmd>ToggleTerm<cr>', {})
