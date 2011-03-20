" Language: AGTD syntax file
" Author: Francisco Garcia Rodriguez <public@francisco-garcia.net>
"
" Licence: Copyright (C) 2010 Francisco Garcia Rodriguez
" This program is free software: you can redistribute it and/or
" modify it under the terms of the GNU General Public License.
" See http://www.gnu.org/licenses/gpl.html
" 
" This program is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty of
" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
" GNU General Public License for more details.
" 
" History:	
"   See plugin/agtd.vim 
"  

syn match       NOSPELL1        "\<\u\+\>" contains=@NoSpell
syn match       NOSPELL2        "\S*[:\=]\S*" contains=@NoSpell
syn match       NOSPELL3        "\S\+=\S\+" contains=@NoSpell

syn match       TASK            "\s@\w\+" contains=@NoSpell
syn match       SECTION         "^#.*" contains=@NoSpell
syn match       LIST            "^\s\+[-\*]"

" Project names must be written in a x4 column
syn match       PROJECT         "^\(\s\{4}\)\+\u\(\u\|\d\|_\)\+\s*\(--.*\)\=$" contains=PROTOCOL

" Project name within task line
syn match       PROJECT         "\sp\(:\w*\)\+" contains=@NoSpell

syn match       SUBCOMMENT      "^\s\+\(#\|;\)\s.*"hs=s+1
syn match       PROTOCOL        "\w\+::" nextgroup=URL,USERNAME contains=@NoSpell
syn match       URL             "\S\+" contained contains=@NoSpell
syn match       USERNAME        "\S\+@" contained nextgroup=URL contains=@NoSpell

"syn match       DATE            "\d\{4}-\d\d-\d\d"hs=s+4
syn match       DATE            "\d\{4}-\d\d-\d\d"

" Define the default highlighting.
" Only used when an item doesn't have highlighting yet
hi def link SECTION Comment

hi TASK guifg=lightgreen
hi SUBCOMMENT guifg=darkcyan 
hi PROJECT guifg=lightred
hi LIST guifg=magenta
hi MARK guifg=lightcyan
hi PROTOCOL guifg=lightmagenta 
hi URL guifg=lightcyan gui=underline
hi USERNAME guifg=lightblue
hi DATE guifg=lightred
syn cluster GTDHI add=TASK,MARK,PROTOCOL,URL,USERNAME

" vim: ts=8 sw=2
