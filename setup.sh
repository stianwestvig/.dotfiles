#!/usr/bin/env bash

SYSTEM_TYPE=$(uname)

LINUX='Linux'
OSX='Darwin'

ln -Ffs ~/.dotfiles/.gitconfig ~/.gitconfig
ln -Ffs ~/.dotfiles/.vimrc ~/.vimrc
ln -Ffs ~/.dotfiles/.bash_prompt ~/.bash_prompt
if [ "$SYSTEM_TYPE" == "$LINUX" ]; then
  ln -Ffs ~/.dotfiles/.bashrc_linux ~/.bashrc
fi
if [ "$SYSTEM_TYPE" == "$OSX" ]; then
  ln -Ffs ~/.dotfiles/.bashrc_mac ~/.bashrc
  ln -Ffs ~/.dotfiles/.bash_profile_mac ~/.bash_profile
fi
