#!/bin/bash

# You Need Execute This First
#xcode-select --install

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# iterm2 + zsh + tmux
brew install zsh git tmux cmake bash-snippets
brew cask install iterm2
touch ~/.tmux.conf && cat > ~/.tmux.conf << EOF
set-window-option -g mode-keys vi
set-option -g allow-rename off
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R
EOF

# oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# solarized
git clone git://github.com/altercation/solarized.git ~/.solarized

# vim
brew install vim ctags the_silver_searcher
git clone https://github.com/wklken/k-vim.git  ~/.vim
cd ~/.vim
sh -x install.sh

# git config
git config --global user.name "XiangYang"
git config --global user.email "swaygently@gmail.com"
git config --global core.editor "vim"

# common
brew install pwgen sshuttle xz
brew cask install keepassxc syncthing google-chrome firefox tunnelblick shadowsocksx nextcloud
brew cask install virtualbox virtualbox-extension-pack vagrant vnc-viewer wireshark xmind mactex

# language sdk
#brew install pyenv pyenv-virtualenv jenv

# App Store:
# foxmail qq alfred wechat evernote youdao

# 破解软件
# secureCRT OmniGraffle microsoft-office Charles BeyondCompare
git clone git://github.com/altercation/solarized.git ~/.solarized
