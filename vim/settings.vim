set mouse=a
let &showbreak='↪ '
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

set ttyfast
set number
set ignorecase          " case insensitive searching
set smartcase           " but become case sensitive if you type uppercase
set incsearch
set showmatch
set hlsearch
set cmdheight=1
set clipboard=unnamed
set undofile
set undodir=~/tmp/vim/undo
set completeopt+=longest
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
set nobackup
set noswapfile

set nocursorline
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

hi clear CursorLine
hi CursorLine cterm=underline
hi Visual guibg=blue guifg=white ctermbg=blue ctermfg=white

" plugin settings

set omnifunc=syntaxcomplete#Complete

let g:ctrlp_working_path_mode = '0'
let g:ctrlp_max_depth = 80
let g:ctrlp_max_files=0
let g:ctrlp_max_height = 40
let g:ctrlp_use_caching = 0
if executable('pt')
    set grepprg=pt\ --nogroup\ --nocolor

    let g:ctrlp_user_command = 'pt -l --skip-vsc-ignores -g . %s'
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
  let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
    \ }
endif

let g:syntastic_javascript_checkers = ['eslint', 'jshint']
let g:syntastic_enable_signs=1
let g:syntastic_check_on_open=1
let g:syntastic_enable_highlighting = 0

let g:airline_theme='solarized'
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep=''
let g:airline_right_sep=''

let g:netrw_liststyle=3
