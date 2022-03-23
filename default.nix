with (import <nixpkgs> {});
let env = bundlerEnv {
  name = "WeddingWebsite";
  inherit ruby;
  gemfile = ./Gemfile;
  lockfile = ./Gemfile.lock;
  gemset = ./gemset.nix;
};
in stdenv.mkDerivation {
  name = "WeddingWebsite";
  buildInputs = [env bundler ruby];
}
