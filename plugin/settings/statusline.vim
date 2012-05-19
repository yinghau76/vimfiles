" Always show status bar
set laststatus=2

" standard status + git status
set statusline=%<%f\ %{fugitive#statusline()}\ %h%m%r\ PWD:\ %{CurDir()}%=%-14.(%l,%c%V%)\ %P

function! CurDir()
    let curdir = substitute(getcwd(), $HOME, "~/", "g")
    return curdir
endfunction

" The following small piece changes the color of the statusline when you enter insert mode, and when you leave insert mode. There are no mapping keys or new commands to remember, it works totally automatically.
" Status line - changes colors depending on insert mode
hi StatusLine   guifg=#455354 guibg=fg
hi StatusLineNC guifg=#808080 guibg=#080808
function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi statusline guifg=#0080ff   guibg=fg   
  elseif a:mode == 'r'
    hi statusline guifg=#0b0b0b   guibg=fg   
  else
    hi statusline guifg=#666666   guibg=fg  
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guifg=#455354 guibg=fg 

