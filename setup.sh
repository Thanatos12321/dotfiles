# !/bin/sh

if [ ! -f ~/.vimrc ]; then
  ln -s .vimrc ~/.vimrc
fi

if [ ! -f ~/.tmux.conf ]; then
  ln -s .tmux.conf ~/.tmux.conf
fi

if [ ! -f ~/.bashrc ]; then
  ln -s .bashrc ~/.bashrc
fi
if [ ! -f ~/.bash_aliases ]; then
  ln -s .bash_aliases ~/.bash_aliases
fi