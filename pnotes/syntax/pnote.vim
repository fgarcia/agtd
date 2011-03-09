"
" File: Power Note Syntax
"
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
"   v0.1  2010-05-23
"      Initial version

if exists("b:current_syntax")
  finish
endif
let b:current_syntax = "pnote"

syn keyword	confTodo	contained TODO FIXME XXX 
syn match	confComment	"^#.*" contains=confTodo
syn region	confString	start=+"+ skip=+\\\\\|\\"+ end=+"+ oneline
syn region	confString	start=+'+ skip=+\\\\\|\\'+ end=+'+ oneline
syn match       SUB_COMMENT     " \(#\|-- \).*"
syn match       ANOTATION       "\s*;\s.*"
syn match       COMMAND         "\s*$\s.*"

"syn region	block	start=+^#+ end=+^\s*$+ contains=inside,confComment,ANOTATION
"syn region	inside	start=+^ + skip=+$\+ + end=+^\s*$+ contained fold 

"syn region	inside	start=+^ + end=+^\s*$+ fold 

" Define the default highlighting.
" Only used when an item doesn't have highlighting yet
hi def link confComment	Comment
hi def link confTodo	Todo
hi def link confString	String
hi SUB_COMMENT guifg=lightcyan
hi ANOTATION guifg=lightgreen
hi COMMAND guifg=cyan


" vim: ts=8 sw=2
