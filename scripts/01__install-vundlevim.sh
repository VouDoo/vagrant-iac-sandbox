#!/bin/sh
#
# install VundleVim and add default configuration
#
# related documentations:
# - VundleVim Github page <https://github.com/VundleVim/Vundle.vim#quick-start>
# - fugitive.vim Github page <https://github.com/tpope/vim-fugitive>
# - vim-airline Github page <https://github.com/vim-airline/vim-airline>
# - NERDTree Github page <https://github.com/preservim/nerdtree>
# - vim-terraform Github page <https://github.com/hashivim/vim-terraform>
# - ansible-vim Github page <https://github.com/pearofducks/ansible-vim>

# install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# add default configuration
sudo tee ~/.vimrc <<EOF
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'preservim/nerdtree'
Plugin 'hashivim/vim-terraform'
Plugin 'pearofducks/ansible-vim'
call vundle#end()
filetype plugin indent on

let g:airline_powerline_fonts=1

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
EOF
