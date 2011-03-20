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

if exists ("b:did_ftplugin_agtd")
   finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin_agtd = 1

setlocal foldexpr=Agtd_getFoldLevel(v:lnum)
setlocal indentexpr=Agtd_getFoldLevel(v:lnum)*4
setlocal fdm=expr
setlocal fdi=0
setlocal formatoptions=
setlocal foldminlines=1
setlocal nowrap
setlocal smartindent

" Shortcuts
nmap <Leader>i :call Agtd_insertTask()<CR>
nmap <Leader>s :call Agtd_getProject()<CR>

" Set jump marks looking for m::<Letter> labels
exe "call Agtd_setMarks()"

