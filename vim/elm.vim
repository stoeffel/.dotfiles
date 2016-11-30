" au FileType elm nmap <leader>m <Plug>(elm-make)
" au FileType elm nmap <leader>eb <Plug>(elm-make-main)
" au FileType elm nmap <leader>t <Plug>(elm-test)
au FileType elm nmap <leader>w :ElmFormat<cr>:w<cr>
au FileType elm nmap <leader>w :ElmFormat<cr>:w<cr>
au BufWritePost *.elm ElmMake

let g:elm_syntastic_show_warnings = 1
let g:elm_jump_to_error = 0
let g:elm_make_output_file = "elm.js"
let g:elm_make_show_warnings = 0
let g:elm_browser_command = ""
let g:elm_detailed_complete = 1
let g:elm_format_autosave = 1
let g:elm_setup_keybindings = 0
let g:elm_classic_highlighting = 0
let g:elm_format_fail_silently = 0

let g:ycm_semantic_triggers = {
     \ 'elm' : ['.'],
     \}

