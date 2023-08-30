# Neovim

I bit the bullet :sparkles: Lua'd :sparkles: all of my Neovim config. You'll find it here! A few high level callouts:

- I use [coc.nvim](https://github.com/neoclide/coc.nvim) for managing LSP goodness/extensions
- I use [neorg](https://github.com/nvim-neorg/neorg) for notes and org
- I wanted to take a "modular" approach to how my config is setup. Top level config lives in `init.lua`; really, it's `require()`ing a bunch of my homegrown modules, setting up third party plugins, and finally running `vim.cmd` with a couple of miscellaneous comands (setting my colorscheme, etc)

## Modules

Each "module" consists of a `<module>.lua` and a matching `<module>/` directory. The `<module>.lua` is composing the submodules that exist in the `<module>/` directory. Most of the time, the `<module>.lua` just looks like a bunch of `require()` calls. Each module is encompassing some behavior or logical area of responsbility. So far, each submodule encompasses the behavior or configuration specific to a third party plugin.

The only module that doesn't follow the above pattern is `plugins.lua`, and that's because there's no real submodule behavior I gotta capture on a plugin-y basis.

Thus far, the following modules and their raison d'etre are:

- `plugins` — this is where I require/define all my third party plugins. I'm using [vim-plug](https://github.com/junegunn/vim-plug) for plugin management (I know `packer.nvim` and `lazy.nvim` are a thing, but I'm comfy with `vim-plug`. Maybe I'll look into be a Lua purist in the future, but eh)
- `variables` — this is where I set Neovim variables (global or otherwise)
- `settings` — this is where I'm setting specific settings/options like my tab stop, whether or not line numbers should be enabled, etc
- `keymaps` — this is where I define my keymaps/keybindings!
- `commands` — this is where I create/define custom commands, e.g `:ALEToggleFixer` (this'll toggle the `ale_fix_on_save` global variable)
- `autocmds` — this is where I create/define autocmds (P.S, Autocommands are a way to tell Neovim to run certain commands whenever certain events happen)

## coc.nvim

Any `coc.nvim`-managed LSP config lives in `coc-settings.json`

## after

So far I've only got one `after` filetype plugin override in `php.lua`
