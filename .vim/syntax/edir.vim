" Vim syntax file
" Language: edir
" Maintainer: Rayhan Alghiffari Azizi
" Latest Revision: 11 January 2022

if exists("b:current_syntax")
  finish
endif

syn match fileNumber '^\d\+'
syn match currentPos '\./' nextgroup=dirName
syn match dirName    '.\+/$' contained
syn match fileExt    '\.[a-zA-Z0-9]\+$'

hi def link fileNumber  SpecialChar
hi def link dirName     Function
hi def link fileExt     Constant
hi def link currentPos  Comment

let b:current_syntax = "edir"
