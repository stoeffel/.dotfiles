au FileType elm nmap <leader>em <Plug>(elm-make)
au FileType elm nmap <leader>eb <Plug>(elm-make-main)
au FileType elm nmap <leader>et <Plug>(elm-test)
au FileType elm nmap <leader>er <Plug>(elm-repl)
au FileType elm nmap <leader>ee <Plug>(elm-error-detail)
au FileType elm nmap <leader>ed <Plug>(elm-show-docs)
au FileType elm nmap <leader>ew <Plug>(elm-browse-docs)

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

let g:elm_syntastic_show_warnings = 1

let g:ycm_semantic_triggers = {
     \ 'elm' : ['.'],
     \}

let g:elm_jump_to_error = 1
let g:elm_make_output_file = "elm.js"
let g:elm_make_show_warnings = 0
let g:elm_syntastic_show_warnings = 1
let g:elm_detailed_complete = 0
let g:elm_format_autosave = 1
let g:elm_setup_keybindings = 1
let g:elm_classic_hightlighting = 0
