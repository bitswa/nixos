{ inputs, pkgs, programs, ... }:
{
  programs.neovim = {
    enable = true;
    package = inputs.neovim-nightly-overlay.packages.${pkgs.system}.default;
  };

  environment.systemPackages = with pkgs; [
    vscode

    git

    vim
    tree-sitter
    fzf

    python315
    nodejs_24

    binutils
    gdb
    coreutils
    libsecret
    libtool
    binutils
    gnumake
    gnugrep
    libgccjit
    libgcc
    gdb
  ];
}
