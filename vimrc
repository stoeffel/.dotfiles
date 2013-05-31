" vim:fdm=marker
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIMRC
"""""""""""
" autor: Stoffel
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" yes it's 2013
set nocompatible
" automatically reload vimrc when it's saved
autocmd BufWritePost vimrc source ~/.vimrc

" VUNDLE {{{
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
syntax on

Bundle 'vundle'
Bundle 'hallison/vim-markdown'
Bundle 'sjl/gundo.vim'
Bundle 'maksimr/vim-jsbeautify'
Bundle 'scrooloose/nerdtree'
Bundle 'editorconfig/editorconfig-vim' 
Bundle 'wincent/Command-T' 
Bundle 'vim-scripts/jshint.vim' 
Bundle 'Valloric/YouCompleteMe' 
Bundle 'tpope/vim-surround' 
Bundle 'terryma/vim-multiple-cursors' 
Bundle 'mileszs/ack.vim' 
Bundle 'tpope/vim-fugitive' 
Bundle 'msanders/snipmate.vim' 
Bundle 'scrooloose/syntastic' 
Bundle 'stoeffel/vim-project' 
Bundle 'tComment'
Bundle 'repeat.vim'
Bundle 'unimpaired.vim'
Bundle 'molokai'
Bundle 'vividchalk.vim'
Bundle 'vim-colors-solarized'
Bundle 'textobj-function'
Bundle 'textobj-indent'
Bundle 'textobj-user'
"Bundle 'stoeffel/vim-neatstatus'
Bundle 'Raimondi/delimitMate'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Floobits/floobits-vim'

filetype plugin indent on "enable loading plugin 
" }}}
" GUI ? {{{
" check if gui or in shell
if has("gui_running") && system('ps xw | grep "Vim -psn" | grep -vc grep') > 0
    " Get the value of $PATH from a login shell.
    " If your shell is not on this list, it may be just because we have not
    " tested it.  Try adding it to the list and see if it works.  If so,
    " please post a note to the vim-mac list!
    if $SHELL =~ '/\(sh\|csh\|bash\|tcsh\|zsh\)$'
        let s:path = system("echo echo VIMPATH'${PATH}' | $SHELL -l")
        let $PATH = matchstr(s:path, 'VIMPATH\zs.\{-}\ze\n')
    endif
endif
" }}}
" Colorscheme {{{
syntax enable
colorscheme solarized
set bg=light
"}}}
" Config {{{
set clipboard=unnamed       " Use the OS clipboard by default (on versions compiled with `+clipboard`)
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set nolist
set listchars=tab:~\ ,trail:.
" hide buffers instead of closing
set hidden
set wildmenu
set wildmode=full
set path=**
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set number
set ignorecase          " case insensitive searching
set smartcase           " but become case sensitive if you type uppercase characters
set incsearch
set showmatch
set hlsearch
set autoread            " auto read when a file is changed from the outside
set mouse=a
set pastetoggle=<F4>
set cmdheight=1
" Enable persistent undo {{{2
set undofile
set undodir=~/tmp/vim/undo
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
" Disable swapfile and backup {{{2
set nobackup
set noswapfile
" 2}}}
" }}}
" Plugins {{{1
" COMMAND-T {{{2
let g:CommandTMaxHeight=20
let g:CommandTMatchWindowReverse = 1 " shows results in reverse order
set wildignore+=**/node_modules/**,**/components/**
autocmd FocusGained * CommandTFlush
" 2}}}
" SYNTASTIC {{{2
let g:syntastic_enable_signs=1
" 2}}}
" POWERLINE {{{2
let g:Powerline_symbols = 'fancy'
" set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set guifont=Droid\ Sans\ Mono\ for\ Powerline
set fillchars+=stl:\ ,stlnc:\
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif
set laststatus=2 " Always display the statusline in all windows
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
" 2}}}
" PROJECT {{{2
let g:project_use_nerdtree = 0
let g:project_set_title = 0
call project#rc('~/src')

Project  'scratch'
Project  '~/.dotfiles'
File     '~/.dotfiles/vimrc'                       , 'vimrc'
File     '~/.dotfiles/gvimrc'                      , 'gvimrc'
File     '~/.dotfiles/zshrc'                       , 'zshrc'
File     '~/.dotfiles/vim_bundles'                 , 'bundles'
Project  '/opt/boxen/repo'                         , 'boxen'
Project  '~/src'                                   , 'CODE'
source ~/.vim_projects
" 2}}}
" SNIPMATE {{{2
autocmd FileType snippet setlocal noexpandtab shiftwidth=7 tabstop=7
" 2}}}
" }}}
" MAPPINGS {{{
  " <leader>
  let mapleader = ","


  " format file
  map <c-f> =G<CR>
  autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
  " for html
  autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
  " for css or scss
  autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

  " switch tab 
  map <C-TAB> :bnext<cr>
  map <C-S-TAB> :bprev<cr>


  " nerdtree
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
  map ,o :NERDTreeToggle<CR>

  " standard regex
  nnoremap / /\v
  cnoremap %s/ %s/\v

  vnoremap > > gv
  vnoremap < < gv

  nnoremap > V>><Esc>
  nnoremap < V<<<Esc>

  " there should be a better use for the arrow keys
  map <Left> <C-O>
  map <Right> <C-I>
  map <Up> <NOP>
  map <Down> :NERDTreeToggle<CR>

  " Bubble single&multiple lines
  nmap <S-Up> ddkP
  nmap <S-Down> ddp
  vmap <S-Up> xkP`[V`]
  vmap <S-Down> xp`[V`]

  " snipmate
  ino <a-tab> <c-r>=TriggerSnippet()<cr>
  snor <a-tab> <esc>i<right><c-r>=TriggerSnippet()<cr>
" }}}
" COMMANDS {{{
command! ReloadVIMRC execute "source ~/.vimrc"
command! SudoWrite execute "w !sudo tee %"
" }}}

echo 'up and ready!'
