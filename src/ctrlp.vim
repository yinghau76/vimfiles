" CtrlP can open selected file in the window created by NERD_tree
let g:ctrlp_reuse_window = 'NERD_tree'

" When starting up, CtrlP sets its local working directory according to this variable: >
" 1 - the directory of the current file.
" 0 - don't manage working directory.
let g:ctrlp_working_path_mode = 0

" Use arrow key to switch different modes
let g:ctrlp_prompt_mappings = {
    \ 'ToggleType(1)':        ['<c-f>', '<right>'],
    \ 'ToggleType(-1)':       ['<c-b>', '<left>'],
    \ 'PrtCurLeft()':         ['<c-h>', '<c-^>'],
    \ 'PrtCurRight()':        ['<c-l>'],
    \ }

