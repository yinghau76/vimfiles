" File-type specific settings

" Delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite * :call DeleteTrailingWS()

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Remember info about open buffers on close
set viminfo^=%

" Recognize Gradle
au BufNewFile,BufRead *.gradle setf groovy

" Ninja
au BufRead,BufNewFile *.ninja set filetype=ninja

" Git commits
autocmd FileType gitcommit setlocal spell tw=72
au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])

" Markdown
autocmd FileType markdown setlocal spell
autocmd FileType markdown set wrap

" HTML
autocmd FileType html set ai sw=2 sts=2 et

" JavaScript
autocmd FileType javascript set ai sw=2 sts=2 et

" Ruby
autocmd! BufNewFile,BufRead *.erb set filetype=eruby.html
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et

" Java
autocmd FileType java set ai sw=4 sts=4 et ts=4

" AIDL
au BufRead,BufNewFile *.aidl set filetype=java

" HAL
au BufRead,BufNewFile *.hal set filetype=java

" Objective-C
autocmd FileType objc set ai sw=4 sts=4 et ts=4

" Linux coding style. Disable it by default. Can be applied explicitly by
" :LinuxCodingStyle command
let g:linuxsty_patterns = []
