let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"

nnoremap <LEADER>] :YcmCompleter GoTo<CR>
nnoremap <LEADER>} :YcmCompleter GoToDefinition<CR>
