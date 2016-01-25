filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'Vundle.vim'


Plugin 'Tabular'
Plugin 'Valloric/YouCompleteMe'
Plugin 'b4b4r07/vim-pt'
Plugin 'bronson/vim-visual-star-search'
Plugin 'ctrlp.vim'
Plugin 'editorconfig-vim'
Plugin 'kassio/neoterm'
Plugin 'repeat.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tommcdo/vim-exchange'
Plugin 'tpope/abolish.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-vinegar'
Plugin 'unimpaired.vim'
Plugin 'vim-gitgutter'
Plugin 'vim-multiple-cursors'
Plugin 'ZoomWin'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'junegunn/goyo.vim'

" style
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'

" lng supprt
Plugin 'jade.vim'
Plugin 'less-syntax'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'mattn/emmet-vim'
Plugin 'vim-scripts/jshint.vim'
Plugin 'vim-stylus'

call vundle#end()
filetype plugin indent on
syntax enable
