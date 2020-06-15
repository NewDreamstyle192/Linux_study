"====================
"basic setting
"===================
set nu
set ruler
set mouse=a
set history=1000
set nocompatible
set tabstop=4
set shiftwidth=4
set bg=dark
syntax enable
syntax on
set backspace=2
set cindent
set autoindent
set t_Co=256

set smarttab
set showcmd

"set color
set guifont=Courier\ New:h12
set t_Co=256
set laststatus=2
"colorscheme desert

"set fold
set foldcolumn=4
"set foldopen=all
"set foldclose=all
set foldmethod=syntax
set foldlevel=100
set foldmethod=marker

"ignore A/a
set ignorecase
set incsearch
set hlsearch

"show matching brackets
set showmatch

"=================
"plugin manager---------Vundle
"=================
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'Raimondi/delimitMate'
let delimitMate_expand_cr = 1

Plugin 'The-NERD-tree'
map <F2> iNERDTreeToggle<CR>
let NERDTreeWinSize=25 

call vundle#end()
filetype plugin indent on 
