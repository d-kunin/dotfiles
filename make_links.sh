#!/bin/bash

ln -sfi $(pwd)/emacs.el ${HOME}/.emacs
ln -sfi $(pwd)/vimrc ${HOME}/.vimrc

mkdir ${HOME}/.vim || true
ln -sfi $(pwd)/colors ${HOME}/.vim/colors
