nmap <silent> <LEADER>/ :nohlsearch<CR>

" Quickly edit/reload the vimrc file
nmap <silent> <LEADER>ev :tabe $HOME/.vim/vimrc<CR>
nmap <silent> <LEADER>sv :so $MYVIMRC<CR>

" Alternative for 'set autochdir'
nnoremap <LEADER>cd :cd %:p:h<CR>:pwd<CR>

" Remove the Windows ^M - when the encodings gets messed up
noremap <LEADER>rm mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Toggle between .c (.cc, .cpp) and .h
" ToggleHeader defined in $HOME/.vim/plugin/cpph.vim
map <LEADER>h :call ToggleHeader()<CR>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

nnoremap <LEADER>1 :1b<CR>
nnoremap <LEADER>2 :2b<CR>
nnoremap <LEADER>3 :3b<CR>
nnoremap <LEADER>4 :4b<CR>
nnoremap <LEADER>5 :5b<CR>
nnoremap <LEADER>6 :6b<CR>
nnoremap <LEADER>7 :7b<CR>
nnoremap <LEADER>8 :8b<CR>
nnoremap <LEADER>9 :9b<CR>
nnoremap <LEADER>0 :10b<CR>

nnoremap <LEADER>a :Ack <C-r><C-w><CR>
