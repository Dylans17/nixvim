let 
  navfilekeymap = x: let s = toString (x + 1); in {name = s; value = "<leader>${s}";};
in
{
  plugins.harpoon = {
    enable = true;

    enableTelescope = true;

    keymapsSilent = true;

    # plugins.harpoon.keymaps doesn't let us set keymap options yet
    keymaps = {
      addFile = "<leader>a";
      toggleQuickMenu = "<leader>`";
      navFile = builtins.listToAttrs (builtins.genList navfilekeymap 9);
    };
  };
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
  builtins.genList (x: let s = navfilekeymap x; in {__unkeyed-1 = s.value; hidden = true;}) 9;
}
