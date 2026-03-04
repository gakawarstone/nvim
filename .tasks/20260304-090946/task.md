# Relocate Treesitter configuration from theme.lua to its own plugin file

- STATUS: OPEN
- PRIORITY: 1

## Plan
1.  **Extract & Create:** Extract Treesitter configuration from `lua/theme.lua` and create `lua/_plugins/treesitter.lua` following the project's plugin configuration pattern.
2.  **Update Plugins:** Modify `lua/plugins.lua` to use the new `lua/_plugins/treesitter.lua` configuration and remove the inline Treesitter plugin definition.
3.  **Cleanup:** Remove the Treesitter setup and `require("nvim-treesitter.configs")` logic from `lua/theme.lua`.
4.  **Verify:** Confirm that syntax highlighting and other Treesitter features remain functional.
