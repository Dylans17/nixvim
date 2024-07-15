# Nixvim Configuration

This repository contains my configuration for nixvim standalone.
I've based my nixvim setup on [kickstart.nixvim](https://github.com/JMartJonesy/kickstart.nixvim), 
but with my own changes and as a standalone flake.

## Configuring

To start configuring, just add or modify the nix files in `./config`.
If you add a new configuration file, remember to add it to the
[`config/default.nix`](./config/default.nix) file

## Running

To run your local configuration, simply run the following command:
```bash
nix run .
```
You can pass arguments to neovim by using `--`. For example:
```bash
nix run . -- config/default.nix
```

To run my configuration, simply run the command:
```bash
nix run github:Dylans17/nixvim
```

## Installing with NixOS or Home Manager

In your `flake.nix` file, add this repository as an input:
```nix
inputs = {
  // other inputs
  nixvim.url = "github:Dylans17/nixvim";
};
```

Now, incorporate the Neovim setup into your personal config. Depending on whether you're using NixOS or Home Manager, use one of the following sections:

### For NixOS:
```nix
{ inputs, system, ... }:
{
  environment.systemPackages = [ inputs.nixvim-flake.packages.${system}.default ];
}
```

### For Home Manager:
```nix
{ inputs, ... }:
{
  home.packages = [ inputs.nixvim-flake.packages.${system}.default ];
}
```

## Installing on non NixOS

Make sure you have [Nix](https://nixos.org/download/) the package manager installed.

Enable Flakes if you have not already. If you are using the Multi-user installation, then edit `/etc/nix/nix.conf` and add the following line:
```
experimental-features = nix-command flakes
```
You should then be able to try it out with
```bash
nix run github:Dylans17/nixvim
```
To have a permanent installation, use
```bash
nix profile install github:Dylans17/nixvim
```
