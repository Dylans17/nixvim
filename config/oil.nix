{
    # file explorer that lets you edit your filesystem like a normal Neovim buffer
    # https://nix-community.github.io/nixvim/plugins/oil/index.html
    plugins.oil = {
      enable = true;
    };

    keymaps = [
      {
        mode = "n";
        key = "-";
        action = "<cmd>Oil --float<CR>";
        options = {
          desc = "Open Oil";
        };
      }
    ];
}
