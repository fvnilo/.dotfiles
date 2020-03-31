#!/usr/bin/env bash

echo "Installing brew formulae..."

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

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
brew install gnu-sed

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

brew install python
brew install go

# Install `wget` with IRI support.
brew install wget --with-iri

brew install curl

# Install more recent versions of some macOS tools.
brew install vim
brew install grep
brew install openssh

# Install other useful binaries.
brew install git
brew install tmux

brew install fzf

# DEVOPS tools
brew install ansible
brew install aws-cli
brew install aws-iam-authenticator
brew install kops
brew install kubectx

# Useful terminal tools
brew install jq
brew install watch
brew install tldr

# Universal Tags
brew install --HEAD universal-ctags/universal-ctags/universal-ctags

# -------------------------------
# Casks
# -------------------------------
brew install cask

# Dev utilities
brew cask install docker

# Browsers
brew cask install google-chrome

# Communication
brew cask install slack

# Change the user's life forever
# God bless the best text editor on earth
brew install vim --with-override-system-vi

# vim's best friend
brew install tmux

brew install git
brew install git-lfs
brew install ssh-copy-id

brew install docker
brew install docker-compose
brew install docker-machine

brew tap homebrew/cask-fonts
brew cask install font-fira-code

# Remove outdated versions from the cellar.
brew cleanup
