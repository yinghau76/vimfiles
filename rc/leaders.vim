" Alternative for 'set autochdir'
nnoremap <LEADER>cd :cd %:p:h<CR>:pwd<CR>

" Close file
nnoremap <LEADER>q :bd<CR>

" Remove the Windows ^M - when the encodings gets messed up
noremap <LEADER>rm mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Tagbar
map <LEADER>tb :TagbarToggle<CR>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <LEADER>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Quickly edit/reload the vimrc file
nmap <LEADER>ve :tabe $MYVIMRC<CR>
nmap <LEADER>vs :so $MYVIMRC<CR>

" Save file
nnoremap <LEADER>w :w<CR>
