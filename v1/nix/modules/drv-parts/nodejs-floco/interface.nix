{
  config,
  options,
  lib,
  drv-parts,
  dream2nix,
  packageSets,
  ...
}: let
  l = lib // builtins;
  t = l.types;
  cfg = config.nodejs-floco;
in {
  options.nodejs-floco = l.mapAttrs (_: l.mkOption) {
    source = {
      type = t.either t.path t.package;
      description = "Source of the package";
      default = config.mkDerivation.src;
    };
    drv = {
      type = t.attrs;
    };
  };
}
