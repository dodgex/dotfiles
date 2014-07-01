#!/bin/bash

if ! hash git 2>/dev/null; then
  wget https://raw.githubusercontent.com/dodgex/dotfiles/master/git-setup.sh -O - | bash
fi

cd ~

git clone https://github.com/dodgex/dotfiles.git
cd dotfiles

./install.sh
