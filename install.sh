#! /bin/bash -x

cp -a ./dotfiles/. ~/

# Install https://github.com/Yash-Handa/logo-ls
logols_dir=$(mktemp -d -t logo-ls-XXXXXX)

pushd $logols_dir
    wget https://github.com/Yash-Handa/logo-ls/releases/download/v1.3.7/logo-ls_amd64.deb
    sudo dpkg -i ./logo-ls_amd64.deb
popd

# Alias logo-ls to ls
printf "alias ls='logo-ls -D'\n" >> ~/.bash_aliases
