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

Bundle 'vundle'
Bundle 'sjl/gundo.vim'
Bundle 'maksimr/vim-jsbeautify'
Bundle 'editorconfig/editorconfig-vim' 
Bundle 'ctrlp.vim'
Bundle 'vim-scripts/jshint.vim' 
Bundle 'Valloric/YouCompleteMe' 
Bundle 'tpope/vim-surround' 
Bundle 'terryma/vim-multiple-cursors' 
Bundle 'mileszs/ack.vim' 
Bundle 'tpope/vim-fugitive' 
Bundle 'scrooloose/syntastic' 
Bundle 'tComment'
Bundle 'repeat.vim'
Bundle 'unimpaired.vim'
" textobj {{{2
Bundle 'textobj-function'
Bundle 'textobj-indent'
Bundle 'textobj-user'
" 2}}}
" Colorschemes {{{2
Bundle 'vim-colors-solarized'
Bundle 'molokai'
Bundle 'github-theme'
" 2}}}

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
colorscheme molokai
"}}}
" Config {{{
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set list
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
set wildignore+=**/node_modules/**,**/components/**,**/.bundle/**,**/.sass-cache/**,**/lib/**,**/extjs/**
set wildignore+=**/Library,**/Movies,**/Google\ Drive,**/Downloads,**/Documents,**/Desktop,**/archive,**/Pictures,**/Public,**/3rd,**/vm
" statusline {{{2
if has("statusline") && !&cp
  set laststatus=2  " always show the status bar

  " Start the status line
  set statusline=%<%f\ %h%m%r%=[\ %{&ff}\ ]\ %-14.(%l,%c%V%)\ %n#
  au InsertEnter * hi StatusLine cterm=NONE  gui=NONE
  au InsertLeave * hi StatusLine cterm=reverse gui=reverse
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
  
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
nnoremap <leader>vr :vsplit $MYVIMRC<cr>
nnoremap <leader>vl :ReloadVIMRC<cr>
" 2}}}
" format file {{{2
map <Leader>f =G<CR>
autocmd FileType javascript noremap <buffer>  <Leader>f :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <Leader>f :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <Leader>f :call CSSBeautify()<cr>
autocmd FileType scss noremap <buffer> <Leader>f :call CSSBeautify()<cr>
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
