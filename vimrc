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
Plugin 'terryma/vim-multiple-cursors'
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
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'jgdavey/tslime.vim'
Plugin 'tommcdo/vim-exchange'
Plugin 'reedes/vim-colors-pencil'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()

filetype plugin indent on
syntax enable

colorscheme solarized
set background=light
hi Search guibg=none ctermbg=none  gui=underline,bold cterm=underline,inverse
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
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
set nobackup
set noswapfile

au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.json set filetype=json
au BufNewFile,BufRead *.coffee set filetype=coffee

let g:syntastic_enable_signs=1
let g:syntastic_check_on_open=0
let g:syntastic_enable_highlighting = 0
set omnifunc=syntaxcomplete#Complete

let mapleader = ","

inoremap <esc> <esc><esc>
nnoremap <leader>vr :split $MYVIMRC<cr>
nnoremap <leader>vl :ReloadVIMRC<cr>
map <Leader>f mzgg=G`z<CR>
autocmd FileType javascript noremap <buffer>  <Leader>f :call JsBeautify()<cr>
vnoremap > > gv
vnoremap < < gv
nnoremap > V>><Esc>
nnoremap < V<<<Esc>
map <Left> <NOP>
map <Right> <NOP>
map <Up> <NOP>
map <Down> <NOP>
nmap <Leader>n :set hlsearch!<cr>
nmap <Leader>gs :Gstatus<cr>
nmap <Leader>ga :Git add --all<cr>
nmap <Leader>gc :Gcommit<cr>
nmap <Leader>gp :Git push<cr>
nmap <Leader>gl :Git pull<cr>
nmap <Leader>gd :Gdiff<cr>
nmap <Leader>ss :!svn status<cr>
map <Leader>t :CtrlP<cr>
map <Leader>tr :ClearCtrlPCache<cr>
let g:ctrlp_working_path_mode = '0'
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

iabbrev @@    schtoeffel@gmail.com
iabbrev fasle false
iabbrev fuction function
iabbrev funciton function
iabbrev listeneres listeners
iabbrev cancle cancel

nnoremap @u yypVr-
nnoremap @U yypVr=

nnoremap <Leader>nt :call Send_to_Tmux("npm test\n")<cr>
nmap <Leader>" :%s/"/\'/g<cr>
nnoremap Q :normal n.<cr>
nnoremap <Space> :silent bn<cr>
nnoremap <BS> :silent bd<cr>
autocmd BufEnter *.md exe 'noremap <leader>p :!chrome-cli open file://%:p<CR>'
set timeoutlen=400 ttimeoutlen=0
set completeopt+=longest

function! SwitchBetween(from, to)
    " TODO check if file exists
    let firstPath = RemoveWDFromPath(expand('%:p'))
    if match(firstPath, '\/'.a:from.'\/') != -1
        let first = a:from
        let sec = a:to
    elseif match(firstPath, '\/'.a:to.'\/') != -1
        let first = a:to
        let sec = a:from
    else
        return
    endif
    let secPath = substitute(firstPath, '\/'.first.'\/',  '\/'.sec.'\/', 'g')
    echo secPath
    execute "edit" secPath
endfunction
nnoremap <Leader>vc :call SwitchBetween('view', 'controller')<cr>

function! RemoveWDFromPath(path)
    let cwd = substitute(getcwd(), '\/Users\/.*\/', '', '')
    let cwd = substitute(getcwd(), '~\/', '', '')
    return substitute(a:path, '.*' .cwd . '\/', '', '')
endfunction

function! GetXtypeFormLine()
    let line = getline('.')
    if match(getline('.'), "xtype") < 0
        return -1
    endif
    return substitute(matchstr(line, "'.*'") ,"'","","g")
endfunction

function! FindXtype()
    let xtype = GetXtypeFormLine()
    if xtype < 0
        return 0
    endif
    execute "vim " "/alias:\\s*'widget." . xtype . "'/ **/app/**/*.js"
endfunction

function! IsExtJs()
    if match(getbufline('%',0,'$'), 'Ext.define') != -1
        return 1
    else
        return 0
    endif
endfunction

nnoremap <Leader>fx :call FindXtype()<cr>

