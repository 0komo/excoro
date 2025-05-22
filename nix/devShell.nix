{
  clangStdenv,
  lua5_4,
  lux-cli,
  ...
}:
{
  packages = [
    lua5_4
    lux-cli
  ];

  stdenv = clangStdenv;
}
