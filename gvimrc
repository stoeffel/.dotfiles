" System gvimrc file for Mac OS X
" Avoid loading this twice, since :unmenu commands will throw errors.
if exists("s:did_mac_gvimrc")
  echo "Already loaded Mac menu file."
  finish
else
  let s:did_mac_gvimrc = 1
endif


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
