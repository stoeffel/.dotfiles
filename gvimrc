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

" TODO:  Decide whether to leave it in non-compatible mode.
" For now, save and restore.
let s:save_cpo = &cpo
set cpo&vim

" Define mac-standard menu items.
" The keyboard shortcuts have been defined in $VIMRUNTIME/macmap.vim .


let &cpo = s:save_cpo