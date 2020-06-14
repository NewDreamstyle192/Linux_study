you can refer :help usr_44.txt

1------------helight cFunctions:
  ` ./vim/syntax/c.vim `
  you can check helight's color code from here:
  https://blog.csdn.net/cp3alai/article/details/45509459?utm_medium=distribute.pc_relevant.none-task-blog-baidujs-1 
  
  ```
  syn match cFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
  syn match cFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
  hi cFunctions gui=NONE cterm=bold  ctermfg=195
  
  ```
  
