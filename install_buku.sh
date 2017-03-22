#!/bin/bash

BUKUDIR="$HOME/software/buku"
BUKUDBDIR="$HOME/.local/share/buku/"
BASHCOMPLETIONDIR="/etc/bash_completion.d/"
ZSHCOMPLETIONDIR="$HOME/.oh-my-zsh/completions/"
BUKUDB="$HOME/Dropbox/Sync/buku/bookmarks.db"
mkdir -p $BUKUDIR
mkdir -p $BUKUDBDIR
mkdir -p $ZSHCOMPLETIONDIR


### install dependencies
# sudo pip3 install urllib3 cryptography beautifulsoup4 requests
sudo apt-get install python3-urllib3 python3-cryptography python3-bs4 python3-requests

### install buku
git clone https://github.com/jarun/Buku/ $BUKUDIR
cd $BUKUDIR
sudo make install
rm $BUKUDBDIR/bookmarks.db
ln -s $BUKUDB $BUKUDBDIR/bookmarks.db

### install autocompletion for shells
cp $BUKUDIR/auto-completion/zsh/_buku $ZSHCOMPLETIONDIR
sudo cp $BUKUDIR/auto-completion/bash/buku-completion.bash $BASHCOMPLETIONDIR
