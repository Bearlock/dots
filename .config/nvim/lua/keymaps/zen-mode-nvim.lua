local map = vim.keymap.set

local options = { noremap = true }
map('n', '<leader>zm', '<cmd>ZenMode<cr>', options) -- Enable Zen Mode
