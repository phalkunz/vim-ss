setlocal indentexpr=SSIndent()

function! SSIndent()
    let line = getline(v:lnum)
    let previousNum = prevnonblank(v:lnum - 1)
    let previous = getline(previousNum)

    if (previous =~ "<%\\s*if.*%>" && previous !~ "<%\\s*end_if\\s*%>" && line !~ "<%\\s*end_if\\s*%>") 
        \ || (previous =~ "<%\\s*else.*%>" && previous !~ "<%\\s*end_else\\s*%>" && line !~ "<%\\s*end_else\\s*%>") 
        \ || (previous =~ "<%\\s*else_if.*%>" && previous !~ "<%\\s*end_loop\\s*%>" && line !~ "<%\\s*end_loop\\s*%>") 
        \ || (previous =~ "<%\\s*loop.*%>" && previous !~ "<%\\s*end_loop\\s*%>" && line !~ "<%\\s*end_loop\\s*%>") 
        \ || (previous =~ "<%\\s*control.*%>" && previous !~ "<%\\s*end_control\\s*%>" && line !~ "<%\\s*end_control\\s*%>") 
        \ || (previous =~ "<%\\s*with.*%>" && previous !~ "<%\\s*end_with\\s*%>" && line !~ "<%\\s*end_with\\s*%>") 
        return indent(previousNum) + &tabstop
    else
        return HtmlIndent()
    endif
endfunction
