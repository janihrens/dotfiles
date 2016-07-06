#!/bin/sh

# usage of ln: ln -s TARGET LINK

# dropbox 
# googledrive

# emacs
ln -s ~/dotfiles/emacs.d ~/.emacs.d

# i3
ln -s ~/dotfiles/i3 ~/.i3

# qtcreator styles
mdkir -p ~/.config/QtProject/qtcreator
ln -s ~/dotfiles/qtcreator/styles ~/.config/QtProject/qtcreator/styles

# newsbeuter
mkdir -p ~/.config/newsbeuter
ln -s ~/dotfiles/newsbeuter ~/.config/newsbeuter

# sublime-text-3
mkdir -p ~/.config/sublime-text-3/Packages
ln -s ~/dotfiles/sublimetext  ~/.config/sublime-text-3/Packages/User

# 
