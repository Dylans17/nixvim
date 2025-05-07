let 
  navfilekeymap = x: let s = toString (x + 1); in { mode = "n"; key = "<leader>${s}"; action.__raw = "function() require'harpoon':list():select(${s}) end"; };
in
{
  plugins.harpoon = {
    enable = true;

    enableTelescope = true;
  };
  keymaps = [
    { mode = "n"; key = "<leader>a"; action.__raw = "function() require'harpoon':list():add() end"; }
    { mode = "n"; key = "<leader>`"; action.__raw = "function() require'harpoon'.ui:toggle_quick_menu(require'harpoon':list()) end"; }
  ] ++ builtins.genList navfilekeymap 9;
  plugins.which-key.settings.spec = [
    {
      __unkeyed-1 = "<leader>a";
      desc = "Harpoon: [A]dd File";
    }
    {
      __unkeyed-1 = "<leader>`";
      desc = "Harpoon: List";
    }
  ] ++
  builtins.genList (x: let s = navfilekeymap x; in {__unkeyed-1 = s.key; hidden = true;}) 9;
}
