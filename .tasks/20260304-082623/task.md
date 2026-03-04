# Fix Global Namespace Pollution in LSP Configuration

- STATUS: OPEN
- PRIORITY: 1

## Goal
The goal of this task is to eliminate global namespace pollution in the Neovim configuration by moving `Capabilities` and `On_attach` from the global `_G` table into a dedicated module, `lua/utils/lsp.lua`. This will improve code maintainability and prevent potential naming conflicts.

## Implementation Plan
1. **Create `lua/utils/lsp.lua`**:
   - Move the definition of `Capabilities` and `On_attach` from `lua/lang/base.lua` to this new module.
   - Return them as part of a table (e.g., `M.capabilities` and `M.on_attach`).

2. **Refactor `lua/lang/base.lua`**:
   - Remove the global definitions of `Capabilities` and `On_attach`.
   - Update `lua/lang/base.lua` to export these values as a module for backward compatibility during the transition, OR directly use the new module in other files.

3. **Update All Language Configuration Files**:
   - Search for and update all occurrences of `Capabilities` and `On_attach` in the `lua/lang/` directory.
   - Replace them with calls to `require("utils.lsp").capabilities` and `require("utils.lsp").on_attach`.

4. **Validation**:
   - Restart Neovim and ensure that LSP servers for various languages (e.g., Python, Rust, Lua) are still attaching correctly.
   - Verify that there are no global `Capabilities` or `On_attach` variables in the `_G` table by checking in the Neovim command line: `:lua print(Capabilities)`.
