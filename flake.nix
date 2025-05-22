{
  description = "Extra utils for Lua coroutines";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flakelight = {
      url = "github:nix-community/flakelight";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { flakelight, ... }@inputs:
    flakelight ./. (
      { ... }:
      {
        inherit inputs;
      }
    );
}
