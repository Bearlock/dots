local map = vim.keymap.set
local options = { noremap = true }

return {
  'folke/zen-mode.nvim',
  cmd = 'ZenMode',
  init = function()
    map('n', '<leader>zm', '<cmd>ZenMode<cr>', options) -- Enable Zen Mode
  end,
  opts = {
    plugins = {
      kitty = {
        enabled = true,
        font = '+4'
      }
    }
  }
}
