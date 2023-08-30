require ('funcs.coc-nvim')

local map = vim.keymap.set

local s_opts = { silent = true }
local se_opts = { silent = true, expr = true }
local sn_opts = { silent = true, nowait = true }
local sne_opts = { silent = true, nowait = true, expr = true }
local nse_opts = { noremap = true, silent = true, expr = true, replace_keycodes = false }

-- Use tab for trigger completion with characters ahead and navigate.
-- NOTE: There's always complete item selected by default, you may want to enable
-- no select by `"suggest.noselect": true` in your configuration file.
-- NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
-- other plugin before putting this into your config.
map('i', '<tab>', 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<tab>" : coc#refresh()', nse_opts)
map('i', '<s-tab>', [[coc#pum#visible() ? coc#pum#prev(1) : "\<c-h>"]], nse_opts)

-- Make <CR> to accept selected completion item or notify coc.nvim to format
-- <C-g>u breaks current undo, please make your own choice
map("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], nse_opts)

-- Use `[g` and `]g` to navigate diagnostics
-- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
map('n', '[g', '<Plug>(coc-diagnostic-prev)', s_opts)
map('n', ']g', '<Plug>(coc-diagnostic-next)', s_opts)

-- GoTo code navigation
map('n', 'gd', '<Plug>(coc-definition)', s_opts)
map('n', 'gy', '<Plug>(coc-type-definition)', s_opts)
map('n', 'gi', '<Plug>(coc-implementation)', s_opts)
map('n', 'gr', '<Plug>(coc-references)', s_opts)
map('n', 'gb', '<c-o>') -- Map 'gb' to ctrl-o to kinda work with Coc's gd

-- Use <C-space> to trigger completion
map('i', '<C-space>', 'coc#refresh()', se_opts)

-- Use <C-j> to trigger snippets
map("i", "<C-j>", "<Plug>(coc-snippets-expand-jump)")

-- Use K to show documentation in preview window
map("n", "K", '<cmd>lua _G.show_docs()<CR>', s_opts)

-- Symbol renaming
map("n", "<leader>rn", "<Plug>(coc-rename)", s_opts)

-- Formatting selected code
map("x", "<leader>f", "<Plug>(coc-format-selected)", s_opts)
map("n", "<leader>f", "<Plug>(coc-format-selected)", s_opts)

-- Apply codeAction to the selected region
-- Example: `<leader>aap` for current paragraph
map("x", "<leader>a", "<Plug>(coc-codeaction-selected)", sn_opts)
map("n", "<leader>a", "<Plug>(coc-codeaction-selected)", sn_opts)

-- Remap keys for apply code actions at the cursor position.
map("n", "<leader>ac", "<Plug>(coc-codeaction-cursor)", sn_opts)

-- Remap keys for apply source code actions for current file.
map("n", "<leader>as", "<Plug>(coc-codeaction-source)", sn_opts)

-- Apply the most preferred quickfix action on the current line.
map("n", "<leader>qf", "<Plug>(coc-fix-current)", sn_opts)

-- Remap keys for apply refactor code actions.
map("n", "<leader>re", "<Plug>(coc-codeaction-refactor)", s_opts)
map("x", "<leader>r", "<Plug>(coc-codeaction-refactor-selected)", s_opts)
map("n", "<leader>r", "<Plug>(coc-codeaction-refactor-selected)", s_opts)

-- Run the Code Lens actions on the current line
map("n", "<leader>cl", "<Plug>(coc-codelens-action)", sn_opts)

-- Map function and class text objects
-- NOTE: Requires 'textDocument.documentSymbol' support from the language server
map("x", "if", "<Plug>(coc-funcobj-i)", sn_opts)
map("o", "if", "<Plug>(coc-funcobj-i)", sn_opts)
map("x", "af", "<Plug>(coc-funcobj-a)", sn_opts)
map("o", "af", "<Plug>(coc-funcobj-a)", sn_opts)
map("x", "ic", "<Plug>(coc-classobj-i)", sn_opts)
map("o", "ic", "<Plug>(coc-classobj-i)", sn_opts)
map("x", "ac", "<Plug>(coc-classobj-a)", sn_opts)
map("o", "ac", "<Plug>(coc-classobj-a)", sn_opts)

-- Remap <C-f> and <C-b> to scroll float windows/popups
---@diagnostic disable-next-line: redefined-local
map("n", "<C-f>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', sne_opts)
map("n", "<C-b>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', sne_opts)
map("i", "<C-f>", 'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(1)<cr>" : "<Right>"', sne_opts)
map("i", "<C-b>", 'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(0)<cr>" : "<Left>"', sne_opts)
map("v", "<C-f>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', sne_opts)
map("v", "<C-b>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', sne_opts)

-- Use CTRL-S for selections ranges
-- Requires 'textDocument/selectionRange' support of language server
map("n", "<C-s>", "<Plug>(coc-range-select)", s_opts)
map("x", "<C-s>", "<Plug>(coc-range-select)", s_opts)

-- Mappings for CoCList
-- code actions and coc stuff
---@diagnostic disable-next-line: redefined-local
-- Show all diagnostics
map("n", "<space>a", ":<C-u>CocList diagnostics<cr>", sn_opts)

-- Manage extensions
map("n", "<space>e", ":<C-u>CocList extensions<cr>", sn_opts)

-- Show commands
map("n", "<space>c", ":<C-u>CocList commands<cr>", sn_opts)

-- Find symbol of current document
map("n", "<space>o", ":<C-u>CocList outline<cr>", sn_opts)

-- Search workspace symbols
map("n", "<space>s", ":<C-u>CocList -I symbols<cr>", sn_opts)

-- Do default action for next item
map("n", "<space>j", ":<C-u>CocNext<cr>", sn_opts)

-- Do default action for previous item
map("n", "<space>k", ":<C-u>CocPrev<cr>", sn_opts)

-- Resume latest coc list
map("n", "<space>p", ":<C-u>CocListResume<cr>", sn_opts)
-- End Mappings for CoCList
