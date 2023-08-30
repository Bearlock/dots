local map = vim.keymap.set

local options = { noremap = true }
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', options) -- Find files in project via FZF
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', options) -- Grep text in project using ripgrep
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', options) -- Find text in buffers
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', options) -- Find text in help tags
