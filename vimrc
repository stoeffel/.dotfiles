""""""""""""""""""""""""""""
" autor: C.Hermann
" my vimrc
""""""""""""""""""""""""""""


" PATHOGEN
set runtimepath+=~/.vim/autoload 
execute pathogen#infect()
syntax on

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

"enable loading plugin
filetype plugin indent on

" SETS
" ====
"

" yes it's 2013
set nocompatible
" number of lines checked for set cmds
set modelines=0
" tab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
" hide buffers instead of closing
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
set smartcase
"set gdefault
set incsearch
set showmatch
set hlsearch
set mouse=a
"switch to “paste mode”
set pastetoggle=<F4>
" powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set guifont=Droid\ Sans\ Mono\ for\ Powerline
set fillchars+=stl:\ ,stlnc:\


" LETS
" ====
"

" <leader>
let mapleader = ","


" AUTOCMS
" =======
"

" format file
map <c-f> =G<CR>

" jsbeautify
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

" nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-o> :NERDTreeToggle<CR>


" win navigation
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

" SCHEME
" ======
"
" Set colorscheme to solarized
colorscheme molokai
