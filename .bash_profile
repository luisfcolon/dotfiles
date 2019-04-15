#!/usr/bin/env bash

pushd() {
  command pushd $@ > /dev/null
}

popd() {
  command popd $@ > /dev/null
}

dotfiles_dir=$HOME/.dotfiles

declare -a rootfiles=(
  ".profile"
)

declare -a dotfiles=(
  ".paths"
  ".exports"
  ".functions"
  ".aliases"
  ".gitaliases"
  ".prompt"
  ".macos"
)

pushd $HOME
for file in "${rootfiles[@]}"
do
   source $file
done
popd

pushd $dotfiles_dir
for file in "${dotfiles[@]}"
do
  source $file
done
popd

unset -f pushd
unset -f popd

eval "$(rbenv init -)"
