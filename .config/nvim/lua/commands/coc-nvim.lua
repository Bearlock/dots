local create_command = vim.api.nvim_create_user_command

create_command('Format', 'call CocAction("format")', {})
create_command('Fold', 'call CocAction("fold", <f-args>)', {nargs = '?'})
create_command('OR', 'call CocActionAsync("runCommand", "editor.action.organizeImport")', {})
