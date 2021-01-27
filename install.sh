#!/usr/bin/env bash

INSTALL_DIR="$HOME/.config/nvim"
GIT_SOURCE="https://github.com/jgrim/nvim.git"

# Install system packages
if [ "$(uname)" == "Darwin" ]; then
    BREW=$(which brew)
    if [[ ! -z "$BREW" ]]; then
        $BREW install --cask adoptopenjdk --no-quarantine
        $BREW install git nvm neovim ctags global composer python python3 php@7.4 ripgrep languagetool
    else
        echo "Please install Homebrew"
        exit 2
    fi
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    APT=$(which apt)
    if [[ ! -z "$APT" ]]; then
        PHP_MODULES="php7.4 php7.4-cli php7.4-common php7.4-curl php7.4-curl php7.4-gd php7.4-intl php7.4-json php7.4-mbstring php7.4-opcache php7.4-readline php7.4-soap php7.4-xml"
        curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
        sudo $APT install git neovim ctags global python3 python3-pip $PHP_MODULES ripgrep 

        # Install composer if it's not installed
        if ! type "composer" > /dev/null; then
            php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
            php -r "if (hash_file('sha384', 'composer-setup.php') === '756890a4488ce9024fc62c56153228907f1545c228516cbf63f885e036d37e9a59d27d63f46af1d4d07ee0f76181c7d3') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
            sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
            php -r "unlink('composer-setup.php');"
        fi
        composer selfupdate > /dev/null
        sudo snap install languagetool &> /dev/null
    fi
else
    echo "Unsupported OS"
    exit 2
fi

# Install latest node
NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install stable && npm install -g neovim

# Install python for neovim
python3 -m pip install --upgrade pynvim

# Download git repo
if [ -d "$INSTALL_DIR/.git" ]; then
    echo "Repository already installed"
  else
    mkdir -p "${INSTALL_DIR}"
    if [ "$(ls -A "${INSTALL_DIR}")" ]; then
      # Initializing repo
      command git init "${INSTALL_DIR}" || {
        echo >&2 'Failed to initialize repo.'
        exit 2
      }
      command git --git-dir="${INSTALL_DIR}/.git" remote add origin "${GIT_SOURCE}" 2> /dev/null \
        || command git --git-dir="${INSTALL_DIR}/.git" remote set-url origin "${GIT_SOURCE}" || {
        echo >&2 'Failed to add remote "origin" (or set the URL).'
        exit 2
      }
    else
      # Cloning repo
      command git clone "${GIT_SOURCE}" --depth=1 "${INSTALL_DIR}" || {
        echo >&2 'Failed to clone repo.'
        exit 2
      }
    fi
    command git -c advice.detachedHead=false --git-dir="${INSTALL_DIR}"/.git --work-tree="$INSTALL_DIR" checkout -f --quiet master || {
        echo >&2 "Failed to checkout latest version!"
        exit 2
    }
  fi
echo "=> Compressing and cleaning up git repository"
if ! command git --git-dir="$INSTALL_DIR"/.git --work-tree="$INSTALL_DIR" reflog expire --expire=now --all; then
    echo >&2 "Your version of git is out of date. Please update it!"
fi
if ! command git --git-dir="$INSTALL_DIR"/.git --work-tree="$INSTALL_DIR" gc --auto --aggressive --prune=now ; then
    echo >&2 "Your version of git is out of date. Please update it!"
fi

# Install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install PHP Coding Standards Fixer
composer global require friendsofphp/php-cs-fixer

# Install PHP Code Sniffer
composer global require "squizlabs/php_codesniffer=*"

nvim +'PlugInstall --sync' +qa
nvim +'mkdp#util#install()' +qa
