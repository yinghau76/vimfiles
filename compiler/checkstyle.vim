if exists("current_compiler")
  finish
endif
let current_compiler = "checkstyle"

if exists(":CompilerSet") != 2        " older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif
    
" CompilerSet makeprg=java\ com.puppycrawl.tools.checkstyle.Main\ -f\ plain
CompilerSet errorformat=%f:%l:%v:\ %m,%f:%l:\ %m,%-G%.%#"
