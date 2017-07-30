#!/bin/bash

[ -d ~/.vim ] && rm -rf ~/.vim && mkdir ~/.vim && tar zxvf vimrc.tar.gz -C ~/.vim && cp ~/.vim/.vimrc ~/.vimrc -a && cp ~/.vim/.vimrc.vundle ~/.vimrc.vundle -a && echo "install vim ok"
[ -d ~/.tmux ] && rm -rf ~/.tmux && mkdir ~/.tmux && tar zxvf tmux.tar.gz -C ~/.tmux && cp ~/.tmux/.tmux.conf ~/.tmux.conf -a && echo "install tmux ok"
[ -d ~/.oh-my-zsh ] && rm -rf ~/.oh-my-zsh && mkdir ~/.oh-my-zsh && tar zxvf oh-my-zsh.tar.gz -C ~/.oh-my-zsh && cp ~/.oh-my-zsh/.zshrc ~/.zshrc && echo "install oh-my-zsh ok"
[ -d ~/.tmuxifier ] && rm -rf ~/.tmuxifier && mkdir ~/.tmuxifier && tar zxvf tmuxifier.tar.gz -C ~/.tmuxifier && echo "install tmuxifier ok"

