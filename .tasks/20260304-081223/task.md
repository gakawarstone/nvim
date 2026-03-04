# Refactor init.lua loading order for Leader Key and Settings

- STATUS: OPEN
- PRIORITY: 1

## Goal
Ensure the Neovim configuration loads the leader key and basic settings before plugins to avoid initialization issues and mapping conflicts.

## Implementation Plan
1. **Modify `init.lua`**:
   - Move `vim.g.mapleader = " "` and `vim.g.maplocalleader = " "` to the very top.
   - Move `require("settings")` to be loaded before `require("plugins")`.
2. **Clean up `lua/keymaps.lua`**:
   - Remove redundant `vim.g.mapleader` assignment and the space mapping from `lua/keymaps.lua`.
3. **Verify**:
   - Ensure all leader-based mappings (e.g., `<leader>tt`, `<leader>ff`) work correctly upon Neovim restart.
   - Confirm UI options from `settings.lua` are active.
