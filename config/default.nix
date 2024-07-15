{
  imports = [
    ./conform.nix
    ./colors.nix
    ./gitsigns.nix
    ./harpoon.nix
    ./lsp.nix
    ./mini.nix
    ./nvim-cmp.nix
    ./telescope.nix
    ./treesitter.nix
    ./which-key.nix
    ./options.nix
    ./oil.nix
    ./keymaps.nix
  ];


  # https://nix-community.github.io/nixvim/NeovimOptions/index.html?highlight=globals#globals
  globals = {
    # Set <space> as the leader key
    # See `:help mapleader`
    mapleader = " ";
    maplocalleader = " ";

    # Set to true if you have a Nerd Font installed and selected in the terminal
    have_nerd_font = false;
  };

  plugins = {
    # Detect tabstop and shiftwidth automatically
    # https://nix-community.github.io/nixvim/plugins/sleuth/index.html
    sleuth = {
      enable = true;
    };

    # "gc" to comment visual regions/lines
    # https://nix-community.github.io/nixvim/plugins/comment/index.html
    comment = {
      enable = true;
    };

    # Highlight todo, notes, etc in comments
    # https://nix-community.github.io/nixvim/plugins/todo-comments/index.html
    todo-comments = {
      enable = true;
      signs = true;
    };
  };
}
