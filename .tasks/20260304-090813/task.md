# Task: Fix hardcoded API keys in minuet-ai.nvim setup

## Problem
In `lua/plugins.lua`, the `minuet-ai.nvim` setup contains hardcoded strings for API keys (e.g., `api_key = "GEMINI_API_KEY"`). This is a security risk if real keys are used and not properly managed.

## Plan
1.  Locate the `minuet-ai.nvim` configuration in `lua/plugins.lua`.
2.  Update the `api_key` assignment to use `os.getenv("GEMINI_API_KEY")` or similar.
3.  Ensure that other potential API keys (like OpenAI compatible ones) also use environment variables.

## Implementation Details
- Change `api_key = "GEMINI_API_KEY"` to `api_key = os.getenv("GEMINI_API_KEY")`.
- Update any other hardcoded keys found in the same block.

## Validation
- Verify that the code still compiles (Neovim starts without errors).
- (Optional) Verify that the environment variable is correctly picked up if a key is provided.
