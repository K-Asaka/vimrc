#! /bin/sh
srcdir=$(cd $(dirname $0); pwd)

if [ -e ${HOME}/.vim ]; then
  echo "${HOME}/.vim already exists."
else
  ln -s ${srcdir}/vim/ ${HOME}/.vim
fi

if [ -e ${HOME}/.vimrc ]; then
  echo "${HOME}/.vimrc already exists."
else
  ln -s ${srcdir}/vimrc ${HOME}/.vimrc
fi

