let mapleader = "\<Space>"

" formating
let @i = 'ceimportf=cf(from f)x'
nnoremap <leader>ri :g/require/normal @i<cr>

vnoremap <leader>vc : <c-u>call PrefixVisualMyCSS()<cr>
nnoremap <leader>vc : <c-u>call PrefixMyCSS()<cr>

" saving and closing
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>Q :Q<cr>
nnoremap <leader>wq :wq<cr>

" buffers
nnoremap <leader>bd :bdel<cr>
nnoremap <leader>ls :buffers<CR>:buffer<Space>

nnoremap <leader>sh :set hlsearch!<cr>

" git
nnoremap gs :Gstatus<cr>
nnoremap gd :Gdiff<cr>
nnoremap gl :Gpull --rebase<cr>

" CtrlP
nnoremap <leader><leader> :CtrlP<cr>
nnoremap <leader>l :CtrlPMRU<cr>
nnoremap <leader>b :CtrlPBuffer<cr>
nnoremap <leader>d :CtrlPDir<cr>
nnoremap <leader>o :CtrlP optional<cr>
nnoremap <leader>tr :ClearCtrlPCache<cr>

nnoremap <leader>u yypVr-
nnoremap <leader>U yypVr=

" function text object
vnoremap af :<C-U>silent! :call TextObjectFunction()<CR>
omap af :normal vaf<CR>

" escaping
inoremap jk <esc><esc>
cnoremap jk <esc>
vnoremap jk <esc>
inoremap <esc> <esc><esc>

" indentation
vnoremap > > gv
vnoremap < < gv
nnoremap > V>><Esc>
nnoremap < V<<<Esc>

" edit
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
cnoremap $$ <C-R>=fnameescape(expand('%'))<cr>
map <leader>e :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

" windows
nnoremap <silent> <C-w>u :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <C-w>i :exe "resize " . (winheight(0) * 2/3)<CR>

" tabs
nnoremap ,p :tabprevious<CR>
nnoremap ,n :tabnext<CR>
nnoremap ,t :tabnew<CR>

xnoremap . :normal .<cr>
source ~/.dotfiles/vim/visual-at.vim

" gruvbox
" nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
" nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
" nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>

" nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
" nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
" nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?

" special chars
nnoremap <leader>` iʹ<esc>

nnoremap ,d "=strftime("%d.%m.%y")<CR>P

" search in buffs
command! -nargs=1 Search call setqflist([]) | silent bufdo grepadd! <args> %

nnoremap <left>  :cprev<cr>zvzz
nnoremap <right> :cnext<cr>zvzz


" elm
nnoremap <leader>el :ElmEvalLine<CR>
vnoremap <leader>es :<C-u>ElmEvalSelection<CR>
nnoremap <leader>em :ElmMakeCurrentFile<CR>
