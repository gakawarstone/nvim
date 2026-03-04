# Cleanup Extensive Commented-out Code

- STATUS: OPEN
- PRIORITY: 1

## Goal
Remove significant amount of commented-out code in `lua/plugins.lua`, `lua/lang/init.lua`, and `lua/utils/init.lua` to improve readability and maintainability.

## Plan
1.  **Analyze `lua/plugins.lua`**: Identify and remove all blocks of commented-out plugin definitions.
2.  **Analyze `lua/lang/init.lua`**: Identify and remove all commented-out language configurations or requirements.
3.  **Analyze `lua/utils/init.lua`**: Identify and remove all commented-out utility requirements or setups.
4.  **Verification**: Run `nvim --headless +qa` to ensure the configuration still loads without errors.
