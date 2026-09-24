# nvim

Personal Neovim configuration for Neovim 0.11 and newer.

## NixOS

Run the configuration directly without installing it:

```console
nix run github:gakawarstone/nvim
```

The flake supplies Neovim and the core executables used by the configuration.
The standalone app uses `NVIM_APPNAME=gakawarstone-nvim`, so it cannot load or
modify an existing `~/.config/nvim` installation. Plugins remain managed by
lazy.nvim in the app-specific user data directory. Tree-sitter parsers are
compiled locally with the Nix-provided toolchain, while Mason is disabled
because language servers and formatters should come from Nix.

### Home Manager

Add the flake to your inputs and import its module:

```nix
{
  inputs.nvim.url = "github:gakawarstone/nvim";

  outputs = { home-manager, nvim, ... }: {
    # Add nvim.homeManagerModules.default to your Home Manager modules.
  };
}
```

Then enable the configuration and select the language tooling you need:

```nix
{
  programs.gakawarstone-nvim = {
    enable = true;
    extraPackages = with pkgs; [
      gopls
      lua-language-server
      marksman
      nil
      nixfmt-rfc-style
      pyright
      ruff
      rust-analyzer
      stylua
      typescript-language-server
    ];
  };
}
```

The module owns `~/.config/nvim`; remove any existing Home Manager declaration
for that path before enabling it. Non-Nix installations continue to use Mason.
