let g:neoterm_position = 'horizontal'
let g:neoterm_automap_keys = ',T'

nnoremap <silent> <f10> :TREPLSendFile<cr>
nnoremap <silent> <f9> :TREPLSend<cr>
vnoremap <silent> <f9> :TREPLSend<cr>

" run set test lib
nnoremap <silent> <leader>rt :call neoterm#test#run('all')<cr>
nnoremap <silent> <leader>rf :call neoterm#test#run('file')<cr>
nnoremap <silent> <leader>rn :call neoterm#test#run('current')<cr>
nnoremap <silent> <leader>rr :call neoterm#test#rerun()<cr>

" Useful maps
" hide/close terminal
nnoremap <silent> <leader>tt :call neoterm#toggle()<cr>
" clear terminal
nnoremap <silent> <leader>tl :call neoterm#clear()<cr>
" kills the current job (send a <c-c>)
nnoremap <silent> <leader>tc :call neoterm#kill()<cr>


" Git commands
command! -nargs=+ Tg :T git <args>
tnoremap <Esc> <C-\><C-n>
