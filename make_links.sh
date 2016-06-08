#!/bin/bash

ln -sfi $(pwd)/emacs.el ${HOME}/.emacs
ln -sfi $(pwd)/vimrc ${HOME}/.vimrc

mkdir ${HOME}/.vim || true
rm -rf ${HOME}/.vim/colors || true
rm -rf ${HOME}/.vim/autoload || true
rm -rf ${HOME}/.vim/bundle || true

ln -sfi $(pwd)/colors/ ${HOME}/.vim/colors
ln -sfi $(pwd)/autoload/ ${HOME}/.vim/autoload
ln -sfi $(pwd)/bundle/ ${HOME}/.vim/bundle
