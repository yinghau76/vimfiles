" TagList settings
"
let Tlist_Ctags_Cmd = substitute(system('which ctags'), '\n', '', '')
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_Close_On_Select = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_WinWidth = 50

map <LEADER>tl :TlistToggle<CR>
