#!/usr/bin/env bash

declare -a rootfiles=(
  ".profile"
)

declare -a dotfiles=(
  ".paths"
  ".macos"
  ".exports"
  ".aliases"
  ".gitaliases"
  ".functions"
  ".prompt"
)

for file in "${rootfiles[@]}"
do
   source ~/$file
done

for file in "${dotfiles[@]}"
do
   source ~/.dotfiles/$file
done
