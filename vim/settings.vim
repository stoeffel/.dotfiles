set t_Co=256
set bg=dark
let g:solarized_termcolors=256
let g:solarized_contrast='high'
let g:solarized_visibility='high'
colorscheme solarized

set laststatus=2
set showtabline=2
set guioptions-=e
set mouse=a
let &showbreak='↪ '
set hidden
set path=**
set wildmenu
set wildmode=full
set wildignorecase
set wildignore+=**/node_modules/**
set wildignore+=**/bower_components/**
set wildignore+=**/dist/**
set wildignore+=**/coverage/**
set wildignore+=**/.bundle/**
set wildignore+=**/.sass-cache/**

set timeout           " for mappings
set timeoutlen=1000   " default value
set ttimeout          " for key codes
set ttimeoutlen=10    " unnoticeable small value

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

highlight Comment cterm=italic
hi clear CursorLine
hi CursorLine cterm=underline
" hi Visual guibg=blue guifg=white ctermbg=blue ctermfg=white

" plugin settings

set omnifunc=syntaxcomplete#Complete

let g:ctrlp_working_path_mode = '0'
let g:ctrlp_max_depth = 80
let g:ctrlp_max_files=0
let g:ctrlp_max_height = 40
let g:ctrlp_use_caching = 0
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor

    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
  let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
    \ }
endif

" let g:syntastic_javascript_checkers = ['eslint', 'jshint']
let g:syntastic_enable_signs=1
let g:syntastic_check_on_open=1
let g:syntastic_enable_highlighting = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_wq = 0

autocmd User Flags call Hoist("global", "SyntasticStatuslineFlag")
let g:tabprefix = ''
let g:tablabel =
      \ "%N%{flagship#tabmodified()} %{flagship#tabcwds('shorten',',')}"

let g:netrw_liststyle=3
set diffopt+=vertical
