command! NriElmTests execute "execute RunElmTests()"

function! RunElmTests()
    execute "call neoterm#open()"
    execute "T ./script/run-elm-tests.sh --dev"
endfunction

command! NriElmMake execute "execute RunElmMake()"

function! RunElmMake()
    execute "call neoterm#open()"
    execute "T ./script/build-elm.sh --dev"
endfunction
