" File-type specific settings

au BufRead,BufNewFile *.ninja set filetype=ninja

" Use ggVGgq to format the entire file
au FileType c,cpp,java set formatprg=uncrustify\ -c\ ~/.uncrustify\ --no-backup\ 2>/dev/null

" Delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.java :call DeleteTrailingWS()
autocmd BufWrite *.ruby :call DeleteTrailingWS()
autocmd BufWrite *.html :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()
autocmd BufWrite *.js :call DeleteTrailingWS()
autocmd BufWrite *.scala :call DeleteTrailingWS()

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

au BufNewFile,BufRead *.gradle setf groovy
