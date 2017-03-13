#!/bin/bash
GOOGLERDIR="$HOME/software/googler/"
BASHCOMPLETIONDIR="/etc/bash_completion.d/"
ZSHCOMPLETIONDIR="$HOME/.oh-my-zsh/completions/"
mkdir -p $GOOGLERDIR
mkdir -p $ZSHCOMPLETIONDIR

### install googler
git clone https://github.com/jarun/googler.git $GOOGLERDIR
cd $GOOGLERDIR
sudo make install

### install autocompletion for shells
cp $GOOGLERDIR/auto-completion/zsh/_googler $ZSHCOMPLETIONDIR
sudo cp $GOOGLERDIR/auto-completion/bash/googler-completion.bash $BASHCOMPLETIONDIR
