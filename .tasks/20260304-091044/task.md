# Standardize on `vim.keymap.set`

## Problem
A mix of `vim.api.nvim_set_keymap` and `vim.keymap.set` is used in `lua/keymaps.lua`. The `vim.keymap.set` is the more modern and flexible API.

## Implementation Plan
1.  Search all files for `vim.api.nvim_set_keymap`.
2.  In `lua/keymaps.lua`, replace:
    - `local map = vim.api.nvim_set_keymap` with `local map = vim.keymap.set`.
    - Note that `vim.keymap.set` defaults to `remap = false` (which is the same as `noremap = true` in `nvim_set_keymap`), so many `noremap = true` options can be simplified or removed.
    - Standardize the `default_opts`.
3.  Check other files (e.g., plugin config files) for `vim.api.nvim_set_keymap` and replace them.
4.  Verify that all keymaps still work as expected in Neovim.

## Files to Modify
- `lua/keymaps.lua`
- Check any files in `lua/_plugins/` or `lua/utils/`.
