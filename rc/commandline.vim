" Activate TAB auto-completion for file paths
set wildmode=list:longest

" This lets you use w!! to do that after you opened the file already
cmap w!! w !sudo tee % >/dev/null
