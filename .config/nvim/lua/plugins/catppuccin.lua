return {
  'catppuccin/nvim',
  as = 'catppuccin',
  lazy = false, -- make sure we load this during startup as it's the main color scheme
  priority = 1000, -- make sure to load this before all other plugins
  config = function()
    vim.g.catppuccin_flavor = 'mocha'
    vim.cmd([[colorscheme catppuccin]])
  end
}
