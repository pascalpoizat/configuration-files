#!/bin/bash

export DEST=~/Downloads/CONFIG/configuration-files
cp -f ~/.spacemacs $DEST
cp -f ~/.gitconfig $DEST
cp -f ~/.gitignore_global $DEST
cp -f ~/.bashrc $DEST
cp -f ~/.bash_profile $DEST
cp -f ~/.zshrc $DEST
cp -f ~/.zshenv $DEST
echo "Files saved to $DEST, do no forget to run git."

