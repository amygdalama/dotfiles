set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
execute pathogen#infect()
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
call vundle#end()
filetype plugin indent on
inoremap jj <ESC>
set expandtab
set tabstop=4
set shiftwidth=4
set number
set scrolloff=5
syntax on
set laststatus=2
set statusline+=%F

