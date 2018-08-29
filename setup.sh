#!/bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

for filename in .[a-z]*; do
  if [ -f "$filename" ]; then
    ln -s ${PWD}/$filename ~/
  fi
done

ln -s ${PWD}/git-prompt.sh ~/
ln -s ${PWD}/git-completion.sh ~/

vim +PluginInstall "+mkspell vi vi_VN" +qall

mkdir ~/.vim/spell
ln -s ${PWD}/vi.utf-8.spl ~/.vim/spell/
