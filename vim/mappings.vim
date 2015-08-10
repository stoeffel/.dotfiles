let mapleader = "\<Space>"
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>Q :Q<cr>
nnoremap <leader>wq :wq<cr>
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
nnoremap <leader>gp :term git push<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gl :term git pull<cr>
nnoremap <leader>t :term<cr>
nnoremap tt<leader> :tabnew<cr>:term<cr>
nnoremap <leader>ts :split<cr>:res 10<cr>:term<cr>
nnoremap <leader>tv :vsplit<cr>:term<cr>
nnoremap <leader><leader> :CtrlP<cr>
nnoremap ,, :Ag
nnoremap <leader>l :CtrlPMRU<cr>
nnoremap <leader>b :CtrlPBuffer<cr>
nnoremap <leader>o :CtrlP optional<cr>
nnoremap <leader>tr :ClearCtrlPCache<cr>
nnoremap t<space> :split<cr>:term<space>
nnoremap p<space> :split<cr>:term pm2i<space>
nnoremap <leader>ni :term npm install --save<space>
nnoremap <leader>nu :term npm update --save<space>
nnoremap <leader>nt :split<cr>:term npm test<cr>
nnoremap <leader>np :term npm publish<cr>
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
inoremap jk <esc><esc>
cnoremap jk <esc>
vnoremap jk <esc>
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
nnoremap ,p :tabprevious<CR>
nnoremap ,n :tabnext<CR>
nnoremap ,t :tabnew<CR>
xnoremap . :normal .<cr>
source ~/.dotfiles/vim/visual-at.vim
" terminal settings:
if exists(':terminal')
  " allow terminal buffer size to be very large
  let g:terminal_scrollback_buffer_size = 100000

  " map esc to exit to normal mode in terminal too
  tnoremap <Esc> <C-\><C-n>

  " Jump and Create splits easily
  tnoremap <C-w>h <C-\><C-n><C-w>h
  tnoremap <C-w>j <C-\><C-n><C-w>j
  tnoremap <C-w>k <C-\><C-n><C-w>k
  tnoremap <C-w>l <C-\><C-n><C-w>l
  tnoremap <C-w>t <C-\><C-n><C-w>w
  tnoremap ,n <C-\><C-n>:tabnext<CR>
  tnoremap ,p <C-\><C-n>:tabprevious<CR>
  tnoremap ,t <C-\><C-n>:tabnew<CR>

  " go into insert mode when entering the terminal
  au WinEnter term://* startinsert
endif
nnoremap <silent> <C-w>u :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <C-w>i :exe "resize " . (winheight(0) * 2/3)<CR>
