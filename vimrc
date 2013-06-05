" vim:fdm=marker
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIMRC
"""""""""""
" autor: Stoffel
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" yes it's 2013
set nocompatible
" VUNDLE {{{
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
syntax on

" Bundles for vim
Bundle 'vundle'
" treeview of undo history
Bundle 'sjl/gundo.vim'
" .editorconfig
Bundle 'editorconfig-vim'
" fuzzy finder
Bundle 'ctrlp.vim'
" jshint
Bundle 'vim-scripts/jshint.vim'
" fuzzy code completion
Bundle 'Valloric/YouCompleteMe'
" { surround stuff }
Bundle 'tpope/vim-surround'
" multiple cursors
Bundle 'terryma/vim-multiple-cursors'
" ack finds your stuff
Bundle 'mileszs/ack.vim'
" git for vim
Bundle 'tpope/vim-fugitive'
" will find your syntax errors
Bundle 'scrooloose/syntastic'
" you should write some comments
Bundle 'The-NERD-Commenter'
" repeat your actions .
Bundle 'repeat.vim'
" the missing pairs
Bundle 'unimpaired.vim'
" lorem ipsum dolor.
Bundle 'loremipsum'
" keep focus
Bundle 'NrrwRgn'
" textobj {{{2
Bundle 'textobj-function'
Bundle 'textobj-indent'
Bundle 'textobj-user'
" 2}}}
" Colorschemes {{{2
Bundle 'vim-colors-solarized'
Bundle 'molokai'
Bundle 'github-theme'
Bundle 'JacksonGariety/Toy-Chest-Theme'
Bundle 'thinkpixellab/flatland'
" 2}}}

filetype plugin indent on "enable loading plugin
syntax enable
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
" Config {{{
" tabs are 4 spaces {{{2
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
" 2}}}
" title {{{2
set title
set titlestring=%{getcwd()}\ -\ \(\ %t\ \)\ %a%r%m titlelen=70
" 2}}}
set antialias
set encoding=utf-8  " what else
set scrolloff=3
set showmode
set showcmd
set list
set listchars=tab:~\ ,trail:.
set hidden  " hide buffers instead of closing
set wildmenu
set wildmode=full
set path=**
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set number
" search {{{2
set ignorecase          " case insensitive searching
set smartcase           " but become case sensitive if you type uppercase characters
set incsearch
set showmatch
set hlsearch
" 2}}}
set autoread            " auto read when a file is changed from the outside
set mouse=a
set pastetoggle=<F4>
set cmdheight=1
 " add register for os clipboard {{{2
 set clipboard+=unnamed
 set clipboard+=unnamedplus
 " 2}}}
 " wildignores {{{2
 set wildignore+=**/node_modules/**,**/components/**,**/.bundle/**,**/.sass-cache/**,,**/extjs/**
 set wildignore+=**/Library,**/Movies,**/Google\ Drive,**/Downloads,**/Documents,**/Desktop,**/archive,**/Pictures,**/Public,**/3rd,**/vm
 " 2}}}
 " statusline {{{2
 if has("statusline") && !&cp
     set laststatus=2  " always show the status bar

     " Start the status line
     set statusline=%<%f\ %h%m%r%=[\ %{&ft}\ ]\ %-14.(%l,%c%V%)\ %n#

     hi StatusLine cterm=reverse gui=reverse
     au InsertEnter * hi StatusLine cterm=bold,underline  gui=bold,underline
     au InsertLeave * hi StatusLine cterm=reverse gui=reverse

 endif
 " }}}
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
 " ctrlP {{{2
 autocmd FocusGained * ClearCtrlPCache
 " TODO test with geofy:
 let g:ctrlp_working_path_mode = 0
 " 2}}}
 " SYNTASTIC {{{2
 let g:syntastic_enable_signs=1
 " 2}}}
 " SNIPMATE {{{2
 autocmd FileType snippet setlocal noexpandtab shiftwidth=7 tabstop=7
 " 2}}}
 " }}}
 " MAPPINGS {{{
 " <leader>
 let mapleader = ","
 " general {{{2
 inoremap jj <esc>
 cnoremap jj <esc><cr>
 nnoremap <leader>vr :vsplit $MYVIMRC<cr>
 nnoremap <leader>vl :ReloadVIMRC<cr>
 " copy stuff to os clipboard {{{3
 vmap <D-c> "*Y
 vmap <Leader>c "*Y
 " 3}}}
 " 2}}}
 " format file {{{2
 map <Leader>f =G<CR>
 " 2}}}
 " indentation {{{2
 vnoremap > > gv
 vnoremap < < gv
 nnoremap > V>><Esc>
 nnoremap < V<<<Esc>
 " 2}}}
 " there should be a better use for the arrow keys {{{{2
 map <Left> <NOP>
 map <Right> <NOP>
 map <Up> <NOP>
 map <Down> <NOP>
 " 2}}}
 " Bubble single&multiple lines {{{2
 nmap <S-Up> ddkP
 nmap <S-Down> ddp
 vmap <S-Up> xkP`[V`]
 vmap <S-Down> xp`[V`]
 " 2}}}
 " Git {{{2
 nmap <Leader>gs :Gstatus<cr>
 nmap <Leader>ga :Git add --all<cr>
 nmap <Leader>gc :Gcommit<cr>
 nmap <Leader>gp :Git push<cr>
 nmap <Leader>gl :Git pull<cr>
 nmap <Leader>gd :Gdiff<cr>
 " 2}}}
 " Buffer navigation {{{2
 " switch tab
 nmap <Leader>b :b#<cr>
 " 2}}}
 " ctrlP {{{2
 map <Leader>t :CtrlP<cr>
 " 2}}}
 " }}}
 " COMMANDS {{{
 command! ReloadVIMRC execute "source ~/.vimrc"
 command! SudoWrite execute "w !sudo tee %"

 " }}}
 " Abbreviations {{{
 iabbrev @@    schtoeffel@gmail.com
 " }}}
" local vimrc {{{
" Do we have local vimrc?
 if filereadable('.vimrc.local')
     " If so, go ahead and load it.
     source .vimrc.local
 endif
 " }}}
