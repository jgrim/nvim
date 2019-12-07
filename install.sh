#!/usr/bin/env sh

BREW=$(which brew)
APT_GET=$(which apt-get)

if [[ ! -z "$BREW" ]]; then
    $BREW install neovim composer global python python3 php@7.3 ripgrep
fi

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install PHP Codeing Standards Fixer
composer global require friendsofphp/php-cs-fixer

nvim +'PlugInstall --sync' +qa
