au BufEnter,BufRead,BufNewFile *.ss set filetype=ss.html syntax=ss | runtime! ftplugin/ss.vim | runtime! indent/ss.vim
au BufEnter *.ss :syntax sync fromstart
