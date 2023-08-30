local create_autocmd = vim.api.nvim_create_autocmd
local create_augroup = vim.api.nvim_create_augroup


-- Highlight the symol and its references on a CursorHold event (cursor is idle)
create_augroup('CocGroup', {})
create_autocmd('CursorHold', {
  group = 'CocGroup',
  desc = 'Highlight the symbol under cursor on CursorHold',
  callback = function()
    vim.fn.CocActionAsync('highlight')
  end
})
