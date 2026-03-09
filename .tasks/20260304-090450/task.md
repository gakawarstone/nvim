# Add LSP automation with mason-lspconfig

- STATUS: OPEN
- PRIORITY: 2

## Problem
Currently, Mason is installed but doesn't automatically manage LSP server installations or their configuration. Each language's LSP setup is handled manually in `lua/lang/*.lua`, which leads to duplication and manual maintenance.

## Objective
Implement `mason-lspconfig.nvim` to automate LSP server installation and provide a centralized way to set up LSPs using the existing `On_attach` and `Capabilities` globals.

## Plan
1. **Add `williamboman/mason-lspconfig.nvim`** to `lua/plugins.lua`.
2. **Create `lua/utils/mason_lspconfig.lua`** to configure `mason-lspconfig`.
   - Implement `ensure_installed` with a sensible default list of servers based on existing `lang/*.lua` files.
   - Implement a default `handlers` function that automatically calls `.setup()` on servers, passing in `Capabilities` and `On_attach`.
3. **Register the new utility** in `lua/utils/init.lua`.
4. **Clean up redundant `setup()` calls** in language-specific files (e.g., `lua/lang/python.lua`, `lua/lang/lua.lua`, etc.) if they don't have special configurations.
5. **Verify** that LSPs are automatically installed and attached when opening relevant files.
