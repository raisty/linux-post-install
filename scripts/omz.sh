#!/bin/bash

# Set Zsh as default
chsh -s $(which zsh)
# .zshrc
wget https://gist.githubusercontent.com/raisty/cfdd9d127d8be1b4fada27787d5abc57/raw/.zshrc -nc --no-dns-cache -O ->> ~/.zshrc
# .zsh_aliases
wget https://gist.githubusercontent.com/raisty/81b9fb5094f10edb11451193d71bb497/raw/.zsh_aliases -nc --no-dns-cache -O ->> ~/.zsh_aliases
# Install Oh My Zsh
wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
# Install plug-in Alt&Select
mkdir -p ~/.oh-my-zsh/plugins/alt-and-select && wget https://raw.githubusercontent.com/raisty/alt-and-select/master/alt-and-select.plugin.zsh -nc --no-dns-cache -O ->> ~/.oh-my-zsh/plugins/alt-and-select
