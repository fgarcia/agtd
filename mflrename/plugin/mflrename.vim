" -----------------------------------------------------------------
" File:    mflrename.vim  -  Massive File List Rename
"
" Description: Rename multiple files with Vim power!
"
"   This is a rather simple/pathetic but useful script for renaming lots of
"   files.  Whenever I don't want to mess up with xargs I rather make a list
"   of files and use Vim to make a batch of commands. That way I have a better
"   control and overview on massive file actions
"
"   1. Make a list of the files you want to rename
"       $ ls -1 > /tmp/before
"
"   2. Edit the name of the files in a copy
"       $ cp /tmp/before /tmp/after
"       $ vim /tmp/after
"
"   3. Create a new buffer and call function with the buffer numbers
"       :e /tmp/before
"       :e /tmp/after
"       :new
"       :ls                (Just to get buffer numbers - b1, b2)
"
"       :call MassiveRename (b1, b2) 
"       :w /tmp/do
"
"   4. The previous result is just a sequence of renames. Just go to the
"   folder where you listed the file and execute the file
"       sh /tmp/do
"
" Author:  Francisco Garcia Rodriguez <francisco.garcia.100@gmail.com>
"
" License:
"            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
"                    Version 2, December 2004
"
"   Copyright (C) 2010 Francisco Garcia <frankalahan@gmail.com>
"
"   Everyone is permitted to copy and distribute verbatim or modified
"   copies of this license document, and changing it is allowed as long
"   as the name is changed.
"
"            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
"   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
"
"    0. You just DO WHAT THE FUCK YOU WANT TO.
"
"   In case of further doubts regarding the license refer to:
"       http://sam.zoy.org/wtfpl/
"
"  Version: 0.1
"
"  Files:
"      plugin/mflrename.vim
"
"  History:
"    0.1  Initial version
" -----------------------------------------------------------------

" WARNING: Be aware that this function works based on the assumption that the
" file names in both lists are placed in the same order. Do not rearrange the
" list.
fu! MassiveRename(before, after)
    let linesBefore = getbufline(a:before, 1, '$')
    let linesAfter  = getbufline(a:after, 1, '$')
    let lineNo = 0

    if len(linesBefore) != len (linesAfter)
        echo "Aborting because list of files have different length"
        return
    endif

    " With this, any error will abort the script
    call append (line('$'),  "set -e")

    " Make a list of MV commands
    for i in linesBefore
        if linesBefore[lineNo] != linesAfter[lineNo]
            let newLine = "mv " . "\"" . linesBefore[lineNo] . "\"" . " \"" . linesAfter[lineNo] . "\"" 
            call append (line('$'),  newLine)
        endif
        let lineNo += 1
    endfor

    " Remove first empty line
    normal dd
endfu

