# Update outdated plugin names

- STATUS: OPEN
- PRIORITY: 1

## Implementation Plan

1.  **Identify outdated plugin names**: Confirm the plugins used in `lua/plugins.lua`.
2.  **Update `nvim-tree.lua` repository**:
    - Change `kyazdani42/nvim-tree.lua` to `nvim-tree/nvim-tree.lua`.
3.  **Update `nvim-web-devicons` repository**:
    - Change `kyazdani42/nvim-web-devicons` to `nvim-tree/nvim-web-devicons`.
4.  **Verify plugin configuration**:
    - Ensure that Neovim starts without errors and the plugins are correctly loaded.
