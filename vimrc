""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIMRC
"""""""""""
" autor: Stoffel
" 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" yes it's 2013
set nocompatible


" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PATHOGEN
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
syntax on
source ~/.dotfiles/vim_bundles
"enable loading plugin
filetype plugin indent on


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI ?
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

" ------------------------------------------------------------------
" Colorscheme Config
" ------------------------------------------------------------------
let g:solarized_termcolors=256    "default value is 16
let g:solarized_contrast="high"    "default value is normal
let g:solarized_visibility="high"    "default value is normal
let g:solarized_diffmode="low"    "default value is normal
syntax enable
set background=dark
colorscheme solarized

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set clipboard=unnamed       " Use the OS clipboard by default (on versions compiled with `+clipboard`)
set foldlevelstart=20
set fdm=indent
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
au FocusLost * :set number
au FocusGained * :set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
set ignorecase          " case insensitive searching
set smartcase           " but become case sensitive if you type uppercase characters
"set gdefault
set incsearch
set showmatch
set hlsearch
set autoread            " auto read when a file is changed from the outside
set mouse=a
"switch to “paste mode”
set pastetoggle=<F4>
" Number of screen lines to use for the command-line
set cmdheight=2
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" POWERLINE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set guifont=Droid\ Sans\ Mono\ for\ Powerline
set fillchars+=stl:\ ,stlnc:\
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COMMAND-T
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:CommandTMaxHeight=20
let g:CommandTMatchWindowReverse = 1 " shows results in reverse order
set wildignore+=node_modules/**,webroot/components/**
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SYNTASTIC
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_enable_signs=0
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PROJECT
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SNIPMATE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType snippet setlocal noexpandtab shiftwidth=7 tabstop=7

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SOURCE MAPPINGS & CMDS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.dotfiles/vim_mappings
source ~/.dotfiles/vim_commands


