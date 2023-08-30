local create_command = vim.api.nvim_create_user_command

create_command('ALEToggleFixer', function ()
  vim.g.ale_fix_on_save = not vim.g.ale_fix_on_save
end, { desc = 'Toggle ale_fix_on_save' })
