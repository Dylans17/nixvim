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
  plugins.which-key.registrations = {
    "<leader>a" = "Harpoon: [A]dd File";
    "<leader>`" = "Harpoon: List";
  } //
  builtins.listToAttrs (builtins.genList (x: let s = navfilekeymap x; in {name = s.value; value = "which_key_ignore";}) 9);
}
