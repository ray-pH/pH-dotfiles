" Python highlight --- 'vim-python/python-syntax'
let g:python_highlight_builtins = 1
let g:python_highlight_class_vars = 1
let g:python_highlight_func_calls = 1
let g:python_highlight_class_vars = 1
let g:python_highlight_operators = 1

" C++ highlight --- 'octol/vim-cpp-enhanced-highlight'
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1

" Commentary
autocmd Filetype pascal set commentstring={\ %s}
autocmd Filetype octave set commentstring=%%s
autocmd Filetype asm set commentstring=;%s
autocmd Filetype svelte set commentstring=<!--%s-->

augroup filetypedetect
    au! BufRead,BufNewFile *.m,*.oct set filetype=octave
    au! BufRead,BufNewFile *.pro set filetype=prolog
    au! BufRead,BufNewFile *.edir set filetype=edir
    au! BufRead,BufNewFile *.mjs set filetype=mathjs
augroup END

" Octave Language
if has("autocmd") && exists("+omnifunc")
    autocmd Filetype octave
    \ if &omnifunc == "" |
    \ setlocal omnifunc=syntaxcomplete#Complete |
    \ endif
endif

"HTML tag
let g:vim_matchtag_enable_by_default = 1
let g:vim_matchtag_files = '*.html,*.xml,*.js,*.jsx,*.vue,*.svelte,*.jsp'
