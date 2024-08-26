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
require('which-key').setup()
require('gitsigns').setup()
require('zen-mode').setup({
  plugins = {
    kitty = {
      enabled = true,
      font = '+4'
    }
  }
})

require('neorg').setup({
  load = {
    ["core.defaults"] = {}, -- Loads default behaviour
    ["core.concealer"] = {}, -- Adds pretty icons to your documents
    ["core.integrations.telescope"] = {},
    ["core.qol.toc"] = {},
    ["core.integrations.treesitter"] = {},
    ["core.summary"] = {},
    ["core.export"] = {
      config = {
        extensions = "all"
      }
    },
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
