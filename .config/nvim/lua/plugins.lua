return {
  -- Some fuzzy file goodness
  'junegunn/fzf',
  'junegunn/fzf.vim',

  -- Easy surrounds/commenting
  { "kylechui/nvim-surround", version = "^4.0.0", event = "VeryLazy" },
  'tpope/vim-commentary',

  -- Git History
  'rhysd/git-messenger.vim',

  -- NetRW tweakin'
  'tpope/vim-vinegar',

  -- Nice icons — lua fork of vim-devicons
  { 'nvim-tree/nvim-web-devicons', lazy = true },

  -- ~Rainbow~ CSV
  { 'mechatroner/rainbow_csv', ft = 'csv' },

  -- A dependency for telescope.nvim, neorg, etc — a library of lua functions
  'nvim-lua/plenary.nvim',

  -- Some nifty searchin'
  { 'nvim-telescope/telescope.nvim', tag = '0.1.2' },

  -- displays a popup with possible keybindings of the command you started typing
  'folke/which-key.nvim',

  -- Git decorations in Lua (Lua fugitive)
  {'lewis6991/gitsigns.nvim', opts = {}},

  -- Astro support
  'wuelnerdotexe/vim-astro',

  -- A nifty color highlighter
  {'norcalli/nvim-colorizer.lua', opts = {}}
}
