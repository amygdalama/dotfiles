set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
execute pathogen#infect()
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'fisadev/vim-isort'
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
let g:flake8_show_in_file=1
let g:flake8_show_in_gutter=1
autocmd BufWritePost *.py call Flake8()
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%>80v.\+/
