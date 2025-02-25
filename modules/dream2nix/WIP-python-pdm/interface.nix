{
  config,
  lib,
  dream2nix,
  ...
}: let
  l = lib // builtins;
  t = l.types;
in {
  options.pdm = {
    lockfile = l.mkOption {
      type = t.path;
    };
    pyproject = l.mkOption {
      type = t.path;
    };

    sourceSelector = import ./sourceSelectorOption.nix {inherit lib;};
  };
}
