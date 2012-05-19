nmap <silent> <LEADER>/ :nohlsearch<CR>
" Quickly edit/reload the vimrc file
nmap <silent> <LEADER>ev :tabe $MYVIMRC<CR>
nmap <silent> <LEADER>sv :so $MYVIMRC<CR>
" Alternative for 'set autochdir'
nnoremap <LEADER>cd :cd %:p:h<CR>:pwd<CR>
" Remove the Windows ^M - when the encodings gets messed up
noremap <LEADER>rm mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
" Toggle between .c (.cc, .cpp) and .h 
" ToggleHeader defined in $HOME/.vim/plugin/cpph.vim
map             <LEADER>h       :call ToggleHeader()<CR>
