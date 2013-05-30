" System gvimrc file for Mac OS X
" Author:  Benji Fisher <benji@member.AMS.org>
" Last modified:  27 March 2006

" If you want to get more Mac-like behavior, leave the "finish" line
" commented out.  This may break menu translations.  For vim-standard menus,
" uncomment this line so that the rest of the file will be ignored.

" finish

" Avoid loading this twice, since :unmenu commands will throw errors.
if exists("s:did_mac_gvimrc")
  echo "Already loaded Mac menu file."
  finish
else
  let s:did_mac_gvimrc = 1
endif


if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif


set background=light
set title
set titlestring=%{getcwd()}\ -\ \(\ %t\ \)\ %a%r%m titlelen=70
set antialias
" With this, the gui (gvim and macvim) now doesn't have the toolbar, the left
" and right scrollbars and the menu.
set guioptions-=T
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=m
set guioptions-=M
set guioptions+=c
