#!/usr/bin/env bash
if ! command -v brew &> /dev/null
then
    echo "Command brew not found. Installing..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

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

# Install terminal theme
brew install starship


# Install file utils
brew install findutils
brew install gnu-sed
brew install ripgrep
brew install stow
brew install zsh-completions

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install most used languages toolkit
brew install python
brew install go
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
brew install hashicorp/tap/terraform-ls
brew install tflint
brew install opa

brew install wget
brew install curl

# Install more recent versions of some macOS tools.
brew install grep
brew install openssh

# Install other useful binaries.
brew install git
brew install git-lfs
brew install tmux
brew install neovim

# DEVOPS tools
brew install ansible
brew install aws-cli

# Useful terminal tools
brew install jq
brew install watch
brew install tldr

brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

brew install --cask rectangle

# Remove outdated versions from the cellar.
brew cleanup
