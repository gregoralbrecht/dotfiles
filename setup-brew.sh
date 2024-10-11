#!/usr/bin/env bash

# Exit if Homebrew is not installed.
[[ ! "$(type -P brew)" ]] && e_error "Please install Homebrew first." && return 1

echo "Installing applications using brew..."

# Upgrade any already-installed formulae.
brew upgrade

# Install CLI tools
brew install gh
brew install awscli
brew install node
brew install deno
brew install git
brew install nvm
brew install rustup-init
brew install webp
brew install yarn

# Install other Formulae
brew install asdf
brew install fzf
brew install tmux
brew install zsh
brew install neovim
brew install prettyping
brew install ripgrep
brew install tree
brew install fasd
brew install bat
brew install nmap
brew install diff-so-fancy
brew install pulumi
brew install gnupg
brew install zsh-completions
brew install zsh-syntax-highlighting

# Install Casks
brew install --cask cheatsheet
brew install --cask firefox
brew install --cask google-chrome
brew install --cask spotify
brew install --cask slack
brew install --cask visual-studio-code
brew install --cask 1password
brew install --cask figma
brew install --cask iterm2
brew install --cask whatsapp
brew install --cask signal
brew install --cask telegram
brew install --cask kap
brew install --cask bartender
brew install --cask zoom
brew install --cask bluesnooze
brew install --cask insomnia
brew install --cask raycast
brew install --cask vlc
brew install --cask scroll-reverser

# Remove outdated versions from the cellar.
brew cleanup