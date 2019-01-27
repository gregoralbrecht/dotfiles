#!/usr/bin/env bash

# Install applications using Homebrew.

# Exit if Homebrew is not installed.
[[ ! "$(type -P brew)" ]] && e_error "Please install Homebrew first." && return 1

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

brew cask install font-fira-code
brew cask install cheatsheet
brew cask install firefox
brew cask install google-chrome
brew cask install franz
brew cask install iterm2
brew cask install mendeley-desktop
brew cask install spotify
brew cask install vlc
brew cask install gimp
brew cask install slack
brew cask install visual-studio-code