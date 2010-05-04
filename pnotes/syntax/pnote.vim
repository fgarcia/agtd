" Yank lines of codes removing leading "$"
fu! YankCode()
    let codeLines = split (getreg(),"\n")
    call map (codeLines, 'substitute(v:val,''^\s\+\$\s*'', "", "")')
    let output = join(codeLines,"\n")
    call setreg ("+", output)
    echo output
endfu
