set mouse=a
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set antialias
set encoding=utf-8
set scrolloff=3
let &showbreak='↪ '
set showmode
set showcmd
set nolist
set listchars=tab:~\ ,trail:.
set hidden
set path=**
set wildmenu
set wildmode=full
set wildignorecase
set wildignore+=**/node_modules/**
set wildignore+=**/target/**
set wildignore+=**/bower_components/**
set wildignore+=**/dist/**
set wildignore+=**/touch/**
set wildignore+=**/coverage/**
set wildignore+=**/cordova/**
set wildignore+=**/.bundle/**
set wildignore+=**/.sass-cache/**
set wildignore+=**/*.class
set wildignore+=**/*.beam
set wildignore+=**/*.jrxml
set wildignore+=**/pom.xml
set wildignore+=**/hiveapp-mount.properties
set wildignore+=**/java.policy
set wildignore+=**/db_changes.sql
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

set omnifunc=syntaxcomplete#Complete
let g:ctrlp_working_path_mode = '0'
let g:ctrlp_max_depth = 80
let g:ctrlp_max_files=0
let g:ctrlp_max_height = 40

let g:syntastic_javascript_checkers = ['eslint', 'jshint']
let g:syntastic_enable_signs=1
let g:syntastic_check_on_open=1
let g:syntastic_enable_highlighting = 0
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
