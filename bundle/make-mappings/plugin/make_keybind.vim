" Command Make will call make and then cwindow which
" opens a 3 line error window if any errors are found.
" If no errors, it closes any open cwindow.
:command -nargs=* Make make <args> | copen 10

nmap <F5> :Make<CR><C-w><Up>
:set autowrite

