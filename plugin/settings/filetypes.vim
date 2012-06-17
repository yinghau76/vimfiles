" File-type specific settings

au BufRead,BufNewFile *.ninja set filetype=ninja 

" Use ggVGgq to format the entire file
au FileType c,cpp,java set formatprg=uncrustify\ -c\ ~/.uncrustify\ --no-backup\ 2>/dev/null
