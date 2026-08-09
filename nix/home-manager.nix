{
  config,
  lib,
  pkgs,
  ...
}:
let
  cfg = config.programs.gakawarstone-nvim;
in
{
  options.programs.gakawarstone-nvim = {
    enable = lib.mkEnableOption "the gakawarstone Neovim configuration";

    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.neovim;
      defaultText = lib.literalExpression "pkgs.neovim";
      description = "Neovim package to install.";
    };

    extraPackages = lib.mkOption {
      type = with lib.types; listOf package;
      default = [ ];
      example = lib.literalExpression "with pkgs; [ lua-language-server stylua ]";
      description = "Language servers, formatters, and other executables to add to PATH.";
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = [
      cfg.package
      pkgs.curl
      pkgs.fd
      pkgs.gcc
      pkgs.git
      pkgs.gnumake
      pkgs.lazygit
      pkgs.nodejs
      pkgs.ripgrep
      pkgs.tree-sitter
      pkgs.unzip
      pkgs.wakatime-cli
    ]
    ++ cfg.extraPackages;

    home.sessionVariables.NVIM_NIX = "1";
    xdg.configFile."nvim".source = lib.cleanSource ../.;
  };
}
