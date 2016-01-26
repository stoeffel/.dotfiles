au FileType elm nmap mm <Plug>(elm-make)
au FileType elm nmap mM <Plug>(elm-make-main)
au FileType elm nmap mt <Plug>(elm-test)
au FileType elm nmap mr <Plug>(elm-repl)
au FileType elm nmap me <Plug>(elm-error-detail)
au FileType elm nmap md <Plug>(elm-show-docs)
au FileType elm nmap mw <Plug>(elm-browse-docs)

au BufWritePost *.elm silent execute "!elm-format --yes %" | edit! | set filetype=elm
