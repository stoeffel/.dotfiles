set background=dark
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set antialias
set encoding=utf-8
set scrolloff=3
set showmode
set showcmd
set nolist
set listchars=tab:~\ ,trail:.
set hidden
set path=**
set wildmenu
set wildmode=full
set wildignore+=**/node_modules/**
set wildignore+=**/bower_components/**
set wildignore+=**/dist/**
set wildignore+=**/touch/**
set wildignore+=**/coverage/**
set wildignore+=**/cordova/**
set wildignore+=**/.bundle/**
set wildignore+=**/.sass-cache/**
set wildignore+=**/*.class
set visualbell
set cursorline
set ttyfast
set backspace=indent,eol,start
set number
set ignorecase          " case insensitive searching
set smartcase           " but become case sensitive if you type uppercase
set incsearch
set showmatch
set hlsearch
set autoread            " auto read when a file is changed from the outside
set cmdheight=1
set clipboard=unnamed
set laststatus=2  " always show the status bar
set undofile
set undodir=~/tmp/vim/undo
set timeoutlen=400 ttimeoutlen=0
set completeopt+=longest
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
set nobackup
set noswapfile
let g:syntastic_enable_signs=1
let g:syntastic_check_on_open=0
let g:syntastic_enable_highlighting = 0
set omnifunc=syntaxcomplete#Complete
let g:ctrlp_working_path_mode = '0'
