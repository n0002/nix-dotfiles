#!/bin/sh
pushd ~/.dotfiles
home-manager switch -f ./users/n/home.nix
popd
