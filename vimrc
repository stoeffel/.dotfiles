"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIMRC
"""""""""""
" autor: Stoffel
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" yes it's 2013
set nocompatible
" VUNDLE
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
Bundle 'unite.vim'
" autocompletion
Bundle 'neocomplcache'
" jshint
Bundle 'vim-scripts/jshint.vim'
" { surround stuff }
Bundle 'tpope/vim-surround'
" git for vim
Bundle 'tpope/vim-fugitive'
" will find your syntax errors
Bundle 'scrooloose/syntastic'
" Fileexplorer
Bundle 'The-NERD-tree'
" you should write some comments
Bundle 'The-NERD-Commenter'
" repeat your actions .
Bundle 'repeat.vim'
" the missing pairs
Bundle 'unimpaired.vim'
" what a beauty
Bundle 'maksimr/vim-jsbeautify'
" substitute
Bundle 'abolish.vim'
" airline
Bundle 'bling/vim-airline'
" textobj
Bundle 'textobj-function'
Bundle 'textobj-indent'
Bundle 'textobj-user'
" Languages
Bundle "pangloss/vim-javascript"
Bundle "ajf/puppet-vim"
Bundle "vim-ruby/vim-ruby"
Bundle 'smarty-syntax'
Bundle 'kchmck/vim-coffee-script'
Bundle 'moll/vim-node'
Bundle 'mango.vim'


filetype plugin indent on "enable loading plugin
syntax enable
" colorscheme
set bg=dark
colorscheme mango
hi! link SignColumn LineNr

" GUI ?
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
" Config
" tabs are 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
" title
set title
set titlestring=%{getcwd()}\ -\ \(\ %t\ \)\ %a%r%m titlelen=70
set antialias
set encoding=utf-8  " what else
set scrolloff=3
set showmode
set showcmd
set nolist
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
" search
set ignorecase          " case insensitive searching
set smartcase           " but become case sensitive if you type uppercase
set incsearch
set showmatch
set hlsearch
set autoread            " auto read when a file is changed from the outside
set mouse=a
set pastetoggle=<F4>
set cmdheight=1
set omnifunc=syntaxcomplete#Complete
" add register for os clipboard
set clipboard=unnamed
" wildignores
set wildignore+=**/node_modules/**
set wildignore+=**/bower_components/**
set wildignore+=**/touch/**
set wildignore+=**/packages/**
set wildignore+=**/cordova/**
set wildignore+=**/.bundle/**
set wildignore+=**/.sass-cache/**
set wildignore+=**/Library
set wildignore+=**/Movies
set wildignore+=**/Google\ Drive
set wildignore+=**/Downloads
set wildignore+=**/Documents
set wildignore+=**/Desktop
set wildignore+=**/archive
set wildignore+=**/Pictures
set wildignore+=**/Public
set wildignore+=**/3rd
set wildignore+=**/vm
set wildignore+=**/*.class
" statusline
let g:airline_theme='badwolf'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
set laststatus=2  " always show the status bar
" Enable persistent undo
set undofile
set undodir=~/tmp/vim/undo
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
" Disable swapfile and backup
set nobackup
set noswapfile
" Filetypes
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.json set filetype=json
au BufNewFile,BufRead *.coffee set filetype=coffee
" Plugins
" ctrlP
let g:ctrlp_working_path_mode = 0
" unite
let g:unite_data_directory='~/.vim/.cache/unite'
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable=1
let g:unite_source_file_rec_max_cache_files=5000
let g:unite_prompt='∑ '
let g:unite_winheight = 10
let g:unite_split_rule = 'botright'
" Shorten the default update date of 500ms
let g:unite_update_time = 200
" Use the fuzzy matcher for everything
call unite#filters#matcher_default#use(['matcher_fuzzy'])
" neocomplcache
let g:neocomplcache_enable_at_startup = 1
" Recommended key-mappings.
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" SYNTASTIC
highlight SyntasticErrorSign cterm=none gui=none ctermfg=88 guifg=#870000
highlight SyntasticWarningSign cterm=none gui=none ctermfg=130 guifg=#af5f00
highlight SyntasticErrorLine gui=none cterm=none
highlight SyntasticWarningLine gui=none cterm=none
let g:syntastic_enable_signs=1
let g:syntastic_check_on_open=0
let g:syntastic_enable_highlighting = 0
" MAPPINGS
" <leader>
let mapleader = ","
" general
inoremap jj <esc>
cnoremap jj <esc><cr>
" wierd double esc
inoremap <esc> <esc><esc>
nnoremap <leader>vr :split $MYVIMRC<cr>
nnoremap <leader>vl :ReloadVIMRC<cr>

" stuff for java
nnoremap <leader>jc :!javac %<cr>
fun! JavaRun()
    execute '!java -Djava.security.policy=wideopen.policy '.substitute(expand('%:t'),"java","", "")
endfun
nnoremap <leader>jr :<cr>


" format file
map <Leader>f mzgg=G`z<CR>
autocmd FileType javascript noremap <buffer>  <Leader>f :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <Leader>f :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <Leader>f :call CSSBeautify()<cr>
" indentation
vnoremap > > gv
vnoremap < < gv
nnoremap > V>><Esc>
nnoremap < V<<<Esc>
" there should be a better use for the arrow keys {2
map <Left> <NOP>
map <Right> <NOP>
map <Up> <NOP>
map <Down> <NOP>
" Bubble single&multiple lines
nmap <S-Up> ddkP
nmap <S-Down> ddp
vmap <S-Up> xkP`[V`]
vmap <S-Down> xp`[V`]
" Git
nmap <Leader>gs :Gstatus<cr>
nmap <Leader>ga :Git add --all<cr>
nmap <Leader>gc :Gcommit<cr>
nmap <Leader>gp :Git push<cr>
nmap <Leader>gl :Git pull<cr>
nmap <Leader>gd :Gdiff<cr>
" Svn
nmap <Leader>ss :!svn status<cr>
" ctrlP
map <Leader>t :CtrlP<cr>
map <C-p> :CtrlP<cr>
" unite
nmap <space> [unite]
nnoremap [unite] <nop>
" General fuzzy search
nnoremap <silent> [unite]y :<C-u>Unite -buffer-name=yanks history/yank<cr>
nnoremap <silent> [unite]l :<C-u>Unite -auto-resize -buffer-name=line line<cr>
nnoremap <silent> [unite]b :<C-u>Unite -auto-resize -buffer-name=buffers buffer<cr>
nnoremap <silent> [unite]m :<C-u>Unite -auto-resize -buffer-name=mappings mapping<cr>
nnoremap <silent> [unite]o :<C-u>Unite -auto-resize -buffer-name=outline outline<cr>
nnoremap <silent> [unite]s :<C-u>Unite -quick-match buffer<cr>
nnoremap <silent> [unite]f :<C-u>Unite file<cr>
" NERDTree
map <leader>no :NERDTreeToggle<cr>
map <leader>nf :NERDTreeFind<cr>
" Gundo
map <leader>g :GundoToggle<cr>
" COMMANDS
command! ReloadVIMRC execute "source ~/.vimrc"
command! SudoWrite execute "w !sudo tee %"
command! -nargs=* Only call CloseHiddenBuffers()
function! CloseHiddenBuffers()
    " figure out which buffers are visible in any tab
    let visible = {}
    for t in range(1, tabpagenr('$'))
        for b in tabpagebuflist(t)
            let visible[b] = 1
        endfor
    endfor
    " close any buffer that are loaded and not visible
    let l:tally = 0
    for b in range(1, bufnr('$'))
        if bufloaded(b) && !has_key(visible, b)
            let l:tally += 1
            exe 'bw ' . b
        endif
    endfor
    echon "Deleted " . l:tally . " buffers"
endfun
" Abbreviations
iabbrev @@    schtoeffel@gmail.com
iabbrev fasle false
iabbrev fuction function
iabbrev funciton function
iabbrev listeneres listeners
iabbrev cancle cancel

cabbrev gs Gstatus
cabbrev ga Git add --all
cabbrev gc Gcommit
cabbrev gp Git push
cabbrev gl Git pull
cabbrev gd Gdiff

" Macros
nnoremap @u yypVr-
nnoremap @U yypVr=
