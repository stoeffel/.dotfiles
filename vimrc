"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIMRC
"""""""""""
" autor: Stoffel
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'vundle'
Plugin 'editorconfig-vim'
Plugin 'ctrlp.vim'
Plugin 'vim-scripts/jshint.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-vinegar'
Plugin 'The-NERD-Commenter'
Plugin 'repeat.vim'
Plugin 'unimpaired.vim'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'abolish.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'ajf/puppet-vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'smarty-syntax'
Plugin 'kchmck/vim-coffee-script'
Plugin 'moll/vim-node'
Plugin 'geekjuice/vim-mocha'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'jgdavey/tslime.vim'
Plugin 'tommcdo/vim-exchange'
Plugin 'reedes/vim-colors-pencil'
" All of your Plugins must be added before the following line
call vundle#end()

filetype plugin indent on "enable loading plugin
syntax enable
colorscheme pencil
set background=light
hi Search guibg=none ctermbg=none  gui=underline,bold cterm=underline,bold

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
set antialias
set encoding=utf-8  " what else
set scrolloff=3
set showmode
set showcmd
set nolist
set listchars=tab:~\ ,trail:.
set hidden  " hide buffers instead of closing

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
" add register for os clipboard
set clipboard=unnamed

" statusline
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

" wierd double esc
inoremap <esc> <esc><esc>
nnoremap <leader>vr :split $MYVIMRC<cr>
nnoremap <leader>vl :ReloadVIMRC<cr>

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

map <Leader>t :CtrlP<cr>
map <Leader>tr :ClearCtrlPCache<cr>
let g:ctrlp_working_path_mode = '0'

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

" Macros
nnoremap @u yypVr-
nnoremap @U yypVr=
nnoremap <leader>tf ye"_dtfea "f{%lx

nnoremap <Leader>nt :call Send_to_Tmux("npm test\n")<cr>
" Mocha
let g:mocha_js_command = 'call Send_to_Tmux("mocha --recursive --colors {spec}\n")'
nnoremap mt :call RunCurrentSpecFile()<CR>
nnoremap ms :call RunNearestSpec()<CR>
nnoremap ml :call RunLastSpec()<CR>
nnoremap ma :call RunAllSpecs()<CR>

nmap <Leader>" :%s/"/\'/g<cr>

nnoremap Q :normal n.<cr>

nnoremap <Space> :silent bn<cr>
nnoremap <BS> :silent bd<cr>

autocmd BufEnter *.md exe 'noremap <leader>p :!chrome-cli open file://%:p<CR>'

set timeoutlen=400 ttimeoutlen=0
set omnifunc=syntaxcomplete#Complete
set completeopt+=longest
