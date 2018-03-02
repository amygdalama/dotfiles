set nocompatible
nnoremap <SPACE> <Nop>
let mapleader=" "
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'wincent/command-t'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Vimjas/vim-python-pep8-indent'
call vundle#end()
filetype plugin indent on
inoremap jj <ESC>
set backspace=indent,eol,start
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
syntax enable
set background=dark
colorscheme solarized
let python_highlight_all = 1
autocmd BufNewFile,BufRead *.py set ft=python
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%>80v.\+/
au BufRead,BufNewFile *.pyx set filetype=python | set syntax=pyrex
au BufRead,BufNewFile *.pyi set filetype=python

set laststatus=2    " display statusline always
set statusline+=%F  " filename
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set nofoldenable

let g:syntastic_python_checkers=['flake8', 'python']
let g:syntastic_python_flake8_post_args='--ignore=F841,F401,E129,E128,E127,E125,E228,N802,N806 --max-line-length=80 --builtins=run,finish,write_task'
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_javascript_eslint_args='--config=static/tools/eslint/eslintrc.yml --ignore-path=static/tools/eslint/eslintignore --rulesdir=static/tools/eslint/rules --ext=.jsx,.js'
highlight link SyntasticError ErrorMsg
highlight link SyntasticWarning WarningMsg

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_working_path_mode = 'ra'

if executable('grr')
    set grepprg=grr
elseif executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*.pyc,*/__pycache__/*

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }


" for editing crontab???
au FileType crontab set nobackup nowritebackup

let g:CommandTMaxFiles = 1000000
let g:CommandTFileScanner = 'watchman'
let g:CommandTAcceptSelectionMap = '<C-t>'
let g:CommandTAcceptSelectionTabMap = '<CR>'

source settings/vim/quip.vim
" Quickly jump to the definition of a symbol (smarter than ctags) "
map <leader>f :call FindDefinition()<cr>
" grr for word under cursor "
map <leader>m :Grr <cword> -m 1000<cr>
