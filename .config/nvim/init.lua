-- Homegrown modules
require('config.lazy')
require('plugins')
require('settings')

-- Wrap things up below
-- Set my colorscheme, turn on plugins, enable syntax
vim.cmd [[
  filetype plugin indent on
  syntax on
]]
