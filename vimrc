set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
call vundle#end()
filetype plugin indent on
inoremap jj <ESC>
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set number
set scrolloff=5
set foldlevelstart=20
set ignorecase
set smartcase
set hlsearch
nnoremap <CR> :noh<CR><CR>
set splitbelow
set splitright
syntax on
autocmd BufNewFile,BufRead *.py set ft=python
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%>80v.\+/
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set nofoldenable

let g:syntastic_python_checkers=['flake8', 'python']
highlight link SyntasticError ErrorMsg
highlight link SyntasticWarning WarningMsg

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'

if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif
