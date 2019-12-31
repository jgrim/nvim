#!/usr/bin/env sh

# Install system packages
BREW=$(which brew)
APT_GET=$(which apt-get)
if [[ ! -z "$BREW" ]]; then
    $BREW cask install adoptopenjdk --no-quarantine
    $BREW install git nvm neovim ctags global composer python python3 php@7.3 ripgrep languagetool
fi
if [[ ! -z "$APT_GET" ]]; then
    $APT_GET #@todo add package list 
fi

# Install python for neovim
pip2 install neovim --upgrade
pip3 install neovim --upgrade

# Install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install PHP Coding Standards Fixer
composer global require friendsofphp/php-cs-fixer

# Install PHP Code Sniffer
composer global require "squizlabs/php_codesniffer=*"

nvim +'PlugInstall --sync' +qa
