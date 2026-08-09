{
  description = "Neovim configuration with NixOS-compatible runtime dependencies";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs =
    { self, nixpkgs }:
    let
      supportedSystems = [
        "x86_64-linux"
        "aarch64-linux"
      ];
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
      configSource = nixpkgs.lib.cleanSourceWith {
        src = ./.;
        filter =
          path: type:
          let
            name = baseNameOf path;
          in
          name != ".git" && name != ".tasks";
      };
      corePackages =
        pkgs: with pkgs; [
          curl
          fd
          gcc
          git
          gnumake
          lazygit
          nodejs
          ripgrep
          tree-sitter
          unzip
          wakatime-cli
        ];
    in
    {
      packages = forAllSystems (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          default = pkgs.writeShellApplication {
            name = "nvim";
            runtimeInputs = [ pkgs.neovim ] ++ corePackages pkgs;
            text = ''
              export NVIM_APPNAME=gakawarstone-nvim
              export NVIM_NIX=1
              exec ${pkgs.neovim}/bin/nvim -u "${configSource}/init.lua" "$@"
            '';
          };
        }
      );

      apps = forAllSystems (system: {
        default = {
          type = "app";
          program = "${self.packages.${system}.default}/bin/nvim";
          meta.description = "Launch the Neovim configuration";
        };
      });

      devShells = forAllSystems (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          default = pkgs.mkShell {
            packages = [ pkgs.neovim ] ++ corePackages pkgs;
            NVIM_NIX = "1";
          };
        }
      );

      homeManagerModules.default = import ./nix/home-manager.nix;
    };
}
