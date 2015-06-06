" Quickly edit/reload the vimrc file
nmap <SLIENT> <LEADER>ev :tabe $HOME/.vim/vimrc<CR>
nmap <SLIENT> <LEADER>sv :so $MYVIMRC<CR>

" Alternative for 'set autochdir'
nnoremap <LEADER>cd :cd %:p:h<CR>:pwd<CR>

" Remove the Windows ^M - when the encodings gets messed up
noremap <LEADER>rm mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Toggle between .c (.cc, .cpp) and .h
" ToggleHeader defined in $HOME/.vim/plugin/cpph.vim
map <LEADER>h :call ToggleHeader()<CR>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <LEADER>te :tabedit <c-r>=expand("%:p:h")<cr>/

nnoremap <LEADER>/ :Ack <C-r><C-w><CR>
nnoremap <LEADER>be :BufExplorer<CR>

map <LEADER>tb :TagbarToggle<CR>

" Quickly open file
nnoremap <LEADER>o :CtrlP<CR>

" Save file
nnoremap <LEADER>w :w<CR>

" Close file
nnoremap <LEADER>q :bd<CR>

" Enter visual line mode easily
nmap <LEADER><LEADER> V
