if exists("b:current_syntax")
	finish
endif

if !exists("main_syntax")
  let main_syntax = 'html'
endif

runtime! syntax/html.vim
unlet b:current_syntax

syn match ssBlock /<%\s*.*\s*%>/ containedin=htmlTag
syn region ssComment start="<%--" end="--%>"
syn match ssVariable /\v\{?\$?[a-z0-9-_]+\}?/ containedin=ssBlock
syn match ssInvocation /\v[\(\)]/ contained containedin=ssBlock
syn match ssOperator /\v\|\||\&\&|\=\=\=|\=\=/ contained containedin=ssBlock
syn match ssKeyword /\vend_if|if|else_if|else/ contained containedin=ssBlock
syn match ssKeyword /\vcontrol|end_control|loop|end_loop|with|end_with|include/ contained containedin=ssBlock
syn match ssString /\v"[^"]*"/ contained containedin=ssBlock
syn match ssString /\v'[^']*'/ contained containedin=ssBlock

hi def link ssBlock Function
hi def link ssVariable Attribute
hi def link ssInvocation Variable
hi def link ssOperator Operator
hi def link ssKeyword Keyword
hi def link ssComment Comment
hi def link ssString String

let b:current_syntax = "ss"
let main_syntax = 'html'
