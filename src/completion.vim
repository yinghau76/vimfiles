" clang_compelte: open qfix window automatically
let g:clang_complete_copen = 1
let s:clang_library_path='/Library/Developer/CommandLineTools/usr/lib'
if isdirectory(s:clang_library_path)
    let g:clang_library_path=s:clang_library_path
endif
