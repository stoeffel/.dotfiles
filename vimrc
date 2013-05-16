set runtimepath+=~/.vim/autoload 
execute pathogen#infect()
syntax on

filetype plugin indent on

set nocompatible

set modelines=0

let mapleader = ","

autocmd VimEnter * wincmd l

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set scrolloff=3



set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber

set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
set mouse=a

set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim


colorscheme molokai
