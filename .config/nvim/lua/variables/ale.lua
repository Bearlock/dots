-- Misc settings
vim.g.ale_fix_on_save = true
vim.g.ale_virtualtext_cursor = 'disabled'

-- Enable PHPCS and PHPCBF
vim.g.ale_php_phpcs_use_global = true
vim.g.ale_php_phpcbf_use_global = true

-- Use the BambooHR standard
vim.g.ale_php_phpcs_standard = 'BambooHR'
vim.g.ale_php_phpcbf_standard = 'BambooHR'


-- Ale Fixers
vim.g.ale_fixers = {
  php = { 'phpcbf', 'remove_trailing_lines', 'trim_whitespace' }
}
