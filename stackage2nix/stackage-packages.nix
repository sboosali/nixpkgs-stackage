# Generated by stackage2nix 0.5.0 from "../../stackage2nix/stack-ghc-822.yaml"
{ nixpkgs ? import <nixpkgs> {} }:

let
  stackPackages =
    { pkgs, stdenv, callPackage }:

    self: {
      "cabal2nix" = callPackage
        ({ mkDerivation, aeson, ansi-wl-pprint, base, bytestring, Cabal
         , cabal-doctest, containers, deepseq, directory
         , distribution-nixpkgs, doctest, filepath, hackage-db, hopenssl
         , hpack, language-nix, lens, monad-par, monad-par-extras, mtl
         , optparse-applicative, pretty, process, split, text, time
         , transformers, utf8-string, yaml
         }:
         mkDerivation {
           pname = "cabal2nix";
           version = "2.7.2";
           sha256 = "1efe847160adda73c9cf7bb39426e4522a95e9338b5048d171fdc27a4f52e68c";
           isLibrary = true;
           isExecutable = true;
           setupHaskellDepends = [ base Cabal cabal-doctest ];
           libraryHaskellDepends = [
             aeson ansi-wl-pprint base bytestring Cabal containers deepseq
             directory distribution-nixpkgs filepath hackage-db hopenssl hpack
             language-nix lens optparse-applicative pretty process split text
             time transformers yaml
           ];
           executableHaskellDepends = [
             aeson ansi-wl-pprint base bytestring Cabal containers deepseq
             directory distribution-nixpkgs filepath hackage-db hopenssl hpack
             language-nix lens monad-par monad-par-extras mtl
             optparse-applicative pretty process split text time transformers
             utf8-string yaml
           ];
           testHaskellDepends = [
             aeson ansi-wl-pprint base bytestring Cabal containers deepseq
             directory distribution-nixpkgs doctest filepath hackage-db hopenssl
             hpack language-nix lens optparse-applicative pretty process split
             text time transformers yaml
           ];
           homepage = "https://github.com/nixos/cabal2nix#readme";
           description = "Convert Cabal files into Nix build instructions";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "stackage2nix" = callPackage
        ({ mkDerivation, aeson, base, bytestring, Cabal, cabal2nix
         , containers, deepseq, distribution-nixpkgs, exceptions, filepath
         , gitlib, gitlib-libgit2, hopenssl, hspec, inflections
         , language-nix, lens, network-uri, optparse-applicative, pretty
         , QuickCheck, shakespeare, stackage-curator, text
         , unordered-containers, yaml
         }:
         mkDerivation {
           pname = "stackage2nix";
           version = "0.5.0";
           src = pkgs.fetchgit {
             url = "https://github.com/typeable/stackage2nix.git";
             rev = "8887ac6492f46b59d909cd1509c8585744565afa";
             sha256 = "1pc1hvazw7b6axav23zfdq49hih9v0q38kcgdx2npcn05s1cv9p6";
           };
           isLibrary = true;
           isExecutable = true;
           libraryHaskellDepends = [
             aeson base bytestring Cabal cabal2nix containers deepseq
             distribution-nixpkgs exceptions filepath gitlib gitlib-libgit2
             hopenssl inflections language-nix lens network-uri
             optparse-applicative pretty QuickCheck stackage-curator text
             unordered-containers yaml
           ];
           executableHaskellDepends = [ base ];
           testHaskellDepends = [
             base bytestring Cabal hspec pretty shakespeare text yaml
           ];
           homepage = "https://github.com/typeable/stackage2nix#readme";
           description = "Convert Stack files into Nix build instructions";
           license = stdenv.lib.licenses.bsd3;
         }) {};
    };
in nixpkgs.haskell.packages.stackage.lts-100.override {
  packageSetConfig = self: super: stackPackages { inherit (nixpkgs) pkgs stdenv; inherit (self) callPackage; } super;
}
