local map = vim.keymap.set

-- Open up a sidebar with the slurped in tags
map('n', '<F8>', '<cmd>TagbarToggle<cr>', {})
