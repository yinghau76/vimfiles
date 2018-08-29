nmap K <Plug>(devdocs-under-cursor)

if (system('uname') =~ 'darwin')
    let g:devdocs_open_cmd = 'open -a Safari'
else
    let g:devdocs_open_cmd = 'firefox'
endif
