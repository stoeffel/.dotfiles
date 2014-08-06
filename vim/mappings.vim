let mapleader = "\<Space>"
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>Q :Q<cr>
nnoremap <leader>wq :wq<cr>
nnoremap <leader>b :b
nnoremap <leader>bd :bdel<cr>
nnoremap <leader>ls :buffers<CR>:buffer<Space>
nnoremap <leader>n :normal! n.<cr>
nnoremap <leader>N :normal! N.<cr>
nnoremap <leader>vr :split $MYVIMRC<cr>
nnoremap <leader>vm :split ~/.dotfiles/vim/mappings.vim<cr>
nnoremap <leader>vs :split ~/.dotfiles/vim/settings.vim<cr>
nnoremap <leader>vp :split ~/.dotfiles/vim/plugins.vim<cr>
nnoremap <leader>vf :split ~/.dotfiles/vim/filetypes.vim<cr>
nnoremap <leader>vl :ReloadVIMRC<cr>
nnoremap <leader>f mzgg=G`z<CR>
nnoremap <leader>h :set hlsearch!<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gp :Dispatch git push<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gl :Dispatch git pull<cr>
nnoremap <leader>t :CtrlP<cr>
nnoremap <leader>tr :ClearCtrlPCache<cr>
nnoremap d<space> :Dispatch<space>
nnoremap <leader>ni :Dispatch npm install --save<space>
nnoremap <leader>nu :Dispatch npm update --save<space>
nnoremap <leader>nt :Dispatch npm test<cr>
nnoremap <leader>np :Dispatch npm publish<cr>
nnoremap <leader>" :%s/"/\'/g<cr>
nnoremap <leader>vc :call SwitchBetween('view', 'controller')<cr>
nnoremap t<CR> :call SwitchBetween('lib', 'test')<cr>
nnoremap <leader>fx :call FindXtype()<cr>
nnoremap <leader>u yypVr-
nnoremap <leader>U yypVr=
autocmd FileType javascript noremap <buffer>  <leader>f :call JsBeautify()<cr>
vnoremap af :<C-U>silent! :call TextObjectFunction()<CR>
omap af :normal vaf<CR>
nnoremap <leader>ex :call ExtractFunction()<cr>
inoremap jj <esc><esc>
cnoremap jj <esc>
inoremap <esc> <esc><esc>
vnoremap > > gv
vnoremap < < gv
nnoremap > V>><Esc>
nnoremap < V<<<Esc>
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
cnoremap $$ <C-R>=fnameescape(expand('%'))<cr>
map <leader>e :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%
xnoremap . :normal .<cr>
source ~/.dotfiles/vim/visual-at.vim

