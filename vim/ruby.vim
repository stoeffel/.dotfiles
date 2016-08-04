let g:rspec_command = "compiler rspec | set makeprg=zeus | Make rspec {spec}"

au FileType ruby nmap <Leader>t :call RunCurrentSpecFile()<CR>
au FileType ruby nmap <Leader>s :call RunNearestSpec()<CR>
au FileType ruby nmap <Leader>l :call RunLastSpec()<CR>
au FileType ruby nmap <Leader>a :call RunAllSpecs()<CR>
