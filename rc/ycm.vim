let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_confirm_extra_conf = 0

nnoremap <LEADER>g :YcmCompleter GoToImprecise<CR>
nnoremap <LEADER>] :YcmCompleter GoToDefinition<CR>
nnoremap <LEADER>} :YcmCompleter GoToDeclaration<CR>

" make YCM compatible with UltiSnips (using supertab)
"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

" Default <C-SPACE> conflicts with system key
let g:ycm_key_invoke_completion = '<c-p>'

" Trigger semantic completion after two characters typed
let g:ycm_semantic_triggers =  {
    \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
    \ 'cs,lua,javascript': ['re!\w{2}'],
    \ }
