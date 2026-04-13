# Neovim

I bit the bullet :sparkles: Lua'd :sparkles: all of my Neovim config. You'll find it here! A few high level callouts:

- I use [coc.nvim](https://github.com/neoclide/coc.nvim) for managing LSP goodness/extensions
- I use Lazy as my package manager
- I use a bunch of treesitter stuff, but I haven't enshrined it in here (probably to my detriment)
- Most settings, keymaps, etc, are all scoped to the plugins that use said keymaps, settings, etc. There is a `config/lazy.lua` that bootstraps lazy.nvim, imports any plugins I've defined in the `plugins` directory/`plugins.lua`, and there's a `settings.lua` that sets some plugin-agnostic settings (line numbers, tabstop, etc).

## Plugins

I run with a pretty minimal set of plugins. I try to prefer anything lua/Neovim native. Anything with it's own config in `plugins/` is because it had more than a line of configuration. All other plugins live in `plugins.lua` with some barebones options.

## coc.nvim

Any `coc.nvim`-managed LSP config lives in `coc-settings.json`

## after

So far I've only got two `after` filetype plugin overrides; one in `php.lua` and another in `rust.lua`.
