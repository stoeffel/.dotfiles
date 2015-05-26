function! Status(winnr)
  " Left
  let stat=" "
  let stat.="%{&modified ? ' ' : ''}"
  let stat.="%{expand('%:p:h:t')}/%{expand('%:t:r')}"

  " Right
  let stat.='%='

    if exists("*fugitive#head")
      let stat.=" %{fugitive#head()} "
    endif
  let stat.='%r'

  return stat
endfunction

function! SetStatus()
  for nr in range(1, winnr('$'))
    call setwinvar(nr, '&statusline', '%!Status('.nr.')')
  endfor
endfunction

augroup status
  autocmd!
  autocmd VimEnter,WinEnter,BufWinEnter,BufUnload * call SetStatus()
augroup END
