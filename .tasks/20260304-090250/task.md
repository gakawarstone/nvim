# Secure Hardcoded API Keys

- STATUS: OPEN
- PRIORITY: 1

## Goal
Replace hardcoded API key placeholders with `os.getenv` to prevent sensitive information from being committed.

## Plan
1.  **Identify hardcoded placeholders**: Search for strings like `GEMINI_API_KEY`, `OPENROUTER_API_KEY`, and others in `lua/plugins.lua`.
2.  **Replace with `os.getenv`**: Update `lua/plugins.lua` to use `os.getenv("KEY_NAME")` instead of hardcoded strings.
3.  **Cleanup `review.md`**: Remove this task from `review.md` once the changes are applied.
4.  **Verification**: Confirm that the code still compiles (LUA syntax check).
