#!/bin/bash

ERRTRAP()                                                                                                                                                                                                                                                                       
{                                                                                 
    echo "[LINE:$1] Error: command or function exited with status $?."            
}

trap 'ERRTRAP $LINENO' ERR                                                                                                                                                                                                                                                                       

[ -f ~/vimrc.tar.gz ]  && rm -rf ~/vimrc.tar.gz
[ -d ~/vimrc ]  && rm -rf ~/vimrc
cp ~/.vim ~/vimrc -ar
cp ~/.vimrc ~/vimrc
cp ~/.vimrc.vundle ~/vimrc
tar zcvf vimrc.tar.gz -C ~/vimrc .

[ -f ~/tmux.tar.gz ] && rm -rf ~/tmux.tar.gz
[ -d ~/tmux ] && rm -rf ~/tmux
cp ~/.tmux ~/tmux -ar
cp ~/.tmux.conf ~/tmux
tar zcvf tmux.tar.gz -C ~/tmux .

[ -f ~/tmuxifier.tar.gz ] && rm -rf ~/tmuxifier.tar.gz
[ -d ~/tmuxifier ] && rm -rf ~/tmuxifier
cp ~/.tmuxifier ~/tmuxifier -a
tar zcvf tmuxifier.tar.gz -C tmuxifier .

[ -f ~/oh-my-zsh.tar.gz ] && rm -rf ~/oh-my-zsh.tar.gz
[ -d ~/oh-my-zsh ] && rm -rf ~/oh-my-zsh
cp ~/.oh-my-zsh ~/oh-my-zsh -a
cp ~/.zshrc ~/oh-my-zsh -a
tar zcvf oh-my-zsh.tar.gz -C ~/oh-my-zsh .




