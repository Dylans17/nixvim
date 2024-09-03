{ config, pkgs, inputs, ... }:
{
# Useful plugin to show you pending keybinds.
# https://nix-community.github.io/nixvim/plugins/which-key/index.html
  plugins.which-key = {
    enable = true;

# Document existing key chains
    settings.spec = [
      {
	__unkeyed = "<leader>c";
	desc = "[C]ode";
      }
      {
	__unkeyed = "<leader>d";
	desc = "[D]ocument";
      }
      {
	__unkeyed = "<leader>r";
	desc = "[R]ename";
      }
      {
	__unkeyed = "<leader>s";
	desc = "[S]earch";
      }
      {
	__unkeyed = "<leader>w";
	desc = "[W]orkspace";
      }
    ];
  };
}
