# Clean up redundant theme configuration

- STATUS: OPEN
- PRIORITY: 2

## Implementation Plan

1.  **Analyze current theme usage**: Confirm `catppuccin` is the desired theme based on `lua/theme.lua`.
2.  **Remove OneDark configuration**:
    - Delete the `require("onedark").setup({...})` block in `lua/theme.lua`.
    - Delete the commented-out `-- vim.cmd("colorscheme onedark")` in `lua/theme.lua`.
3.  **Remove OneDark plugin**:
    - Remove `"navarasu/onedark.nvim"` from `lua/plugins.lua`.
4.  **Verify configuration**:
    - Ensure Neovim starts without errors and `catppuccin` is correctly applied.
