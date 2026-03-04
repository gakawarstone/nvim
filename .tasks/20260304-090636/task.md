# Standardize Plugin Configuration

- STATUS: OPEN
- PRIORITY: 2

## Problem Description
Plugins are currently configured in multiple ways:
- Inline `config` functions in `lua/plugins.lua`.
- Modularized files in `lua/_plugins/` that are `require`'d.
- Plugin setups in `lua/utils/*.lua`.

This inconsistency makes it harder to manage, find, and update configurations.

## Implementation Plan
1. [ ] Identify all plugins in `lua/plugins.lua` that have an inline `config` function or complex `opts`.
2. [ ] For each such plugin, create a corresponding file in `lua/_plugins/<plugin_name>.lua`.
3. [ ] Extract the configuration logic (inline `config` or `opts`) and place it into the new file.
4. [ ] In `lua/plugins.lua`, replace the inline configuration with a `require("_plugins.<plugin_name>")` call.
5. [ ] Identify plugin-specific `.setup()` calls in `lua/utils/*.lua` and migrate them to the modular pattern.
6. [ ] Standardize the format:
    - Use `opts` for simple table-based configurations.
    - Use `config` for logic-heavy configurations.
    - Ensure all configurations follow the `lazy.nvim` plugin spec format.
7. [ ] Verify that all plugins load correctly after the refactor.

## Next Steps
- Start with the most prominent plugins in `lua/plugins.lua`.
- Audit `lua/utils/*.lua` for hidden plugin setups.
