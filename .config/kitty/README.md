# Kitty :smile_cat:

This here is my initial stab at a [kitty](https://sw.kovidgoyal.net/kitty/) config. Most of it is aesthetic. I'm hoping to figure out my keymaps in a bit ha.

## Configs

So far the organization of (most of) the config files is flat in the `kitty` directory and loaded via `include <area-of-responsiblity>.conf`. The conf files are mostly split up in such a way that they encapsulate some area of responsiblity, e.g, `mouse.conf`, `font.conf`, etc. In the future I'll probably move 'em to a `kitty.d` directory and load everything in there. The only thing that differs is `themes/`.

The config files du jour are as follows:

- `font.conf` — Anything related to how a font renders lives here
- `keymaps.conf` — Unedited at the time of writing this, but ideally any custom key mappings live here
- `mouse.conf` — Any mouse-clicky mappings and mouse-specific behaviors/gestures live here
- `tabbar.conf` — Tab bar specific settings live here (however, some of it _also_ lives in the current them, I probably should reconcile that)
- `kitty.conf` — The kitty config file; it loads 'n' composes the rest of my configs

## Themes

 I'm mercurial and even though I've been rocking [catppuccin](https://github.com/catppuccin/catppuccin) as my theme for everything (for a while), I might wanna experiment in the future (without fully committing to a new theme ha). So any theme configs live in `themes/` and should be hot-swappable from `kitty.conf`. So far, the catppuccin-mocha variant lives in `themes/mocha.conf` and is the daily driver.
