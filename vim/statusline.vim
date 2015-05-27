function! GitStatus()
  let shellcmd= 'git status --porcelain --ignore-submodules -unormal'
  let output=system(shellcmd)
  if strlen(output) == 0
    return 0
  endif
  return 1
endfunction

function! Status(winnr)
  " Left
  let stat=" "
  if mode() == 'v'
    let stat.=''
  elseif mode() == 'V'
    let stat.=''
  elseif mode() == 'CTRL-V'
    let stat.=''
  elseif mode() == 'i'
    let stat.=''
  elseif mode() == 'R'
    let stat.=''
  elseif mode() == 't'
    let stat.=''
  else
    let stat.=''
  endif
  let stat.=" %{expand('%:p:h:t')}/%{expand('%:t:r')} "
  let stat.="%{&modified ? '' : ''}"

  " Right
  let stat.='%='
  if exists('g:loaded_fugitive')
    let stat.=""
    let stat.=" %{fugitive#head()} "
  endif
  if exists('g:loaded_syntastic_checker')
    let stat.="%{SyntasticStatuslineFlag()}"
  endif
  let stat.="%#warningmsg#"
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
