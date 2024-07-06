" Vim syntax file
" Language: mathjs
" Maintainer: Rayhan Alghiffari Azizi
" Latest Revision: 2 Dec 2022
"
"
if exists("b:current_syntax")
  finish
endif

syn match string '^\".*\"'
syn match function '[a-zA-Z][a-zA-Z0-9]*(' contains=openparen
syn match openparen '(' contained
syn match number '-\?[0-9]\+.\?[0-9]\+'
syn keyword in in
syn keyword test test

hi def link test Label
hi def link string String
hi def link number Constant
hi def link in Comment
hi def link function Function

let b:current_syntax = "mathjs"
