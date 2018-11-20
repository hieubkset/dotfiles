#!/bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

for filename in .[a-z]*; do
  if [ -f "$filename" ]; then
    ln -s ${PWD}/$filename ~/
  fi
done

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh > ~/git-prompt.sh
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > ~/git-completion.sh


vim +PluginInstall "+mkspell vi vi_VN" +qall
mkdir ~/.vim/spell
mv ./vi.utf-8.spl ~/.vim/spell/
