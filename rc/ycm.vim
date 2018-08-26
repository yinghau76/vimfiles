let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 0

nnoremap <LEADER>g :YcmCompleter GoToImprecise<CR>
nnoremap <LEADER>] :YcmCompleter GoToDefinition<CR>
nnoremap <LEADER>} :YcmCompleter GoToDeclaration<CR>

" make YCM compatible with UltiSnips (using supertab)
"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
