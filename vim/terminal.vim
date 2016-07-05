let g:neoterm_position = 'horizontal'
let g:neoterm_automap_keys = ',T'
let g:neoterm_size = '7'

nnoremap <silent> <f10> :TREPLSendFile<cr>
nnoremap <silent> <f9> :TREPLSend<cr>
vnoremap <silent> <f9> :TREPLSend<cr>

nnoremap <silent> <leader>rt :call neoterm#test#run('all')<cr>
nnoremap <silent> <leader>rf :call neoterm#test#run('file')<cr>
nnoremap <silent> <leader>rn :call neoterm#test#run('current')<cr>
nnoremap <silent> <leader>rr :call neoterm#test#rerun()<cr>

nnoremap <silent> <leader>T :term<cr>
nnoremap <silent> <leader>tt :call neoterm#toggle()<cr>
nnoremap <silent> <leader>tc :call neoterm#close()<cr>
nnoremap <silent> <leader>to :call neoterm#open()<cr>
nnoremap <silent> <leader>tl :call neoterm#clear()<cr>
nnoremap <silent> <leader>tk :call neoterm#kill()<cr>


tnoremap <Esc><Esc> <C-\><C-n>

let g:terminal_scrollback_buffer_size = 100000


" Jump and Create splits easily
tnoremap <C-w>h <C-\><C-n><C-w>h
tnoremap <C-w>j <C-\><C-n><C-w>j
tnoremap <C-w>k <C-\><C-n><C-w>k
tnoremap <C-w>l <C-\><C-n><C-w>l
tnoremap <C-w>t <C-\><C-n><C-w>w
tnoremap ,n <C-\><C-n>:tabnext<CR>
tnoremap ,p <C-\><C-n>:tabprevious<CR>
tnoremap ,t <C-\><C-n>:tabnew<CR>
