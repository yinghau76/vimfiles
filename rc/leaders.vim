nnoremap <LEADER>be :BufExplorer<CR>

" Alternative for 'set autochdir'
nnoremap <LEADER>cd :cd %:p:h<CR>:pwd<CR>

" Toggle between .c (.cc, .cpp) and .h
" ToggleHeader defined in $HOME/.vim/plugin/cpph.vim
map <LEADER>h :call ToggleHeader()<CR>

nmap <LEADER>n :cnext<CR>
nmap <LEADER>p :cprev<CR>

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
nmap <LEADER>ve :tabe $HOME/.vim/vimrc<CR>
nmap <LEADER>vs :so $HOME/.vim/vimrc<CR>

" Save file
nnoremap <LEADER>w :w<CR>
