local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- Some fuzzy file goodness
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

-- Easy surrounds/commenting
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

-- The nifty status bar at the bottom
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

-- Git History
Plug 'rhysd/git-messenger.vim'

-- Linting!
Plug 'dense-analysis/ale'

-- Manage CTags plz
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'

-- NetRW tweakin'
Plug 'tpope/vim-vinegar'

-- Tasty language server support
Plug ('neoclide/coc.nvim', { branch = 'release' })

-- Fancy start screen
Plug 'mhinz/vim-startify'

-- Gimme that coffee cat theme
Plug ('catppuccin/nvim', { as = 'catppuccin' })

-- Toggle a terminal
Plug ('akinsho/toggleterm.nvim', { tag =  '*' })

-- Nice icons — lua fork of vim-devicons
Plug 'nvim-tree/nvim-web-devicons'

-- ~Rainbow~ CSV
Plug 'mechatroner/rainbow_csv'

-- treesitter support in neovim
Plug('nvim-treesitter/nvim-treesitter', {
  ['do'] = function()
    vim.cmd('TSUpdate')
  end
})

-- Docblock generation (janky)
Plug 'danymat/neogen'

-- A dependency for telescope.nvim, neorg, etc — a library of lua functions
Plug('nvim-lua/plenary.nvim')

-- Some nifty searchin'
Plug('nvim-telescope/telescope.nvim', { tag = '0.1.2' })

-- Neovim ORG mode
Plug('nvim-neorg/neorg', {
  ['do'] = function()
    vim.cmd('Neorg sync-parsers')
  end
})

Plug('nvim-neorg/neorg-telescope')

vim.call('plug#end')
