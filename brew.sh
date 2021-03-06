#!/usr/bin/env bash

# Install command-line tools using Homebrew.
# Forked from https://github.com/mathiasbynens/dotfiles/blob/master/brew.sh

# Exit if Homebrew is not installed.
[[ ! "$(type -P brew)" ]] && e_error "Please install Homebrew first." && return 1

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install ZSH.
brew install zsh
brew install zsh-completions

# Switch to using brew-installed zsh as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/zsh" /etc/shells; then
  echo "${BREW_PREFIX}/bin/zsh" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/zsh";
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install gmp

# Install other useful binaries.
brew install git
brew install imagemagick --with-webp
brew install awscli
brew install bat
brew install diff-so-fancy
brew install fzf
brew install htop
brew install node
brew install noti
brew install prettyping
brew install tdlr
brew install tmux
brew install yarn
brew install zsh-syntax-highlighting

# Install RCM to manage dotfiles
brew tap thoughtbot/formulae
brew install rcm

# Remove outdated versions from the cellar.
brew cleanup