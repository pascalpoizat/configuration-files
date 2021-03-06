#!/bin/bash

export DEST=~/Downloads/CONFIG/configuration-files
cp -f ~/.spacemacs $DEST
cp -f ~/.gitconfig $DEST
cp -f ~/.gitignore_global $DEST
cp -f ~/.bashrc $DEST
cp -f ~/.bash_profile $DEST
cp -f ~/.zshrc $DEST
cp -f ~/.zshenv $DEST
cp -f ~/.czrc $DEST
cp -f ~/.local/bin/syncpages $DEST
cp -f ~/.local/bin/agenda_to_orgmod $DEST
cp -f ~/rsync_exclude_file.txt $DEST
cp -f ~/.vimrc $DEST
cp -rf ~/.vim $DEST
cp -rf ~/.ghci $DEST
echo "Files saved to $DEST, do no forget to run git."

