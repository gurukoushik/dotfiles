#!/bin/bash

# Clipboard manager
brew install maccy

# zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

# fzf
brew install fzf
$(brew --prefix)/opt/fzf/install

# starship
brew install starship
cp ./starship.toml ~/.config/

# nimblenote
brew install nimblenote

# ranger
pip3 install ranger-fm

# useful cli tools
brew install bat
brew install dust
brew install ripgrep