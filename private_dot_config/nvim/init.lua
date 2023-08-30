-- Homegrown modules
require('plugins')
require('variables')
require('settings')
require('keymaps')
require('commands')
require('autocmds')

-- Other people's plugins
require('catppuccin').setup()
require('toggleterm').setup()
require('neogen').setup()
require('toggleterm').setup()
require('neorg').setup({
  load = {
    ["core.defaults"] = {}, -- Loads default behaviour
    ["core.concealer"] = {}, -- Adds pretty icons to your documents
    ["core.integrations.telescope"] = {},
    ["core.qol.toc"] = {},
    ["core.dirman"] = { -- Manages Neorg workspaces
      config = {
        workspaces = {
          work = "~/notes/work",
          home = "~/notes/home"
        },
        default_workspace = "work"
      }
    }
  }
})

-- Wrap things up below
-- Set my colorscheme, turn on plugins, enable syntax
vim.cmd [[
  colorscheme catppuccin
  filetype plugin indent on
  syntax on
]]
