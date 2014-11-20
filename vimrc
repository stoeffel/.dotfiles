set nocompatible
filetype off
source ~/.dotfiles/vim/plugins.vim
filetype plugin indent on
syntax enable

source ~/.dotfiles/vim/mappings.vim
source ~/.dotfiles/vim/filetypes.vim
source ~/.dotfiles/vim/abbreviations.vim
source ~/.dotfiles/vim/settings.vim


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

function! SwitchBetween(from, to)
    " TODO check if file exists
    let firstPath = RemoveWDFromPath(expand('%:p'))
    if match(firstPath, a:from.'\/') != -1
        let first = a:from
        let sec = a:to
    elseif match(firstPath, a:to.'\/') != -1
        let first = a:to
        let sec = a:from
    else
        return
    endif
    let secPath = substitute(firstPath, first.'\/',  sec.'\/', 'g')
    echo secPath
    execute "edit" secPath
endfunction

function! RemoveWDFromPath(path)
    let cwd = substitute(substitute(getcwd(), '\~\/', '', ''), '\/Users\/.*\/', '', '')
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

function! TextObjectFunction()
    normal! ]}%
    execute "normal ?function\<CR>"
    normal! vf{%
endfunction

function! ExtractFunction()
    let functionName = input('Function name: ')
    call TextObjectFunction()
    execute ":normal! c" . functionName
    execute ":normal! Ovar " . functionName . " = "
    normal! p
    normal! f{%
    execute ":normal! a;"
endfunction

set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234

"%g/\/\*\*\n\(\_s*\*.*\n\)*/
colorscheme solarized
set bg=dark
