require('settings.coc-nvim')

-- Show existing tab with 2 spaces width
vim.opt.tabstop = 2

-- when indenting with '>', use 2 spaces width
vim.opt.shiftwidth = 2

-- On pressing tab, insert 2 spaces
vim.opt.expandtab = true

-- Turns on line numbers
vim.opt.number = true

-- Unfold everything by default — Treesitter tends to like to fold e'erything
-- Neorg uses Treesitter for the folds and everything folded by default is
-- annoying
vim.opt.foldenable = false
