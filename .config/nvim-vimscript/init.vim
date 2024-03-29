" Remapping
source $HOME/.config/nvim/remap.vim
" Vundle
source $HOME/.config/nvim/plugins.vim
" Custom function and command
source $HOME/.config/nvim/func.vim
" Syntax highlighter
source $HOME/.config/nvim/syntax.vim

" Setting syntax on
set number			" show number
set showmatch			" highlight matching bracket
set cursorline			" highlight line where cursor is
" set relativenumber		" relative line number
set noshowmode			" not showing --insert-- etc. in bottom left
set showtabline=2		" always show tab
set shiftwidth=4		" tab is 4 space wice
set expandtab
set mouse=nv			" use mouse in normal and visual mode
" set iskeyword+=-		" treat - sep word as a single word
set formatoptions-=cro		" stop newline comment continuation
" set clipboard=unnamedplus 	" use system clipboard
set t_Co=256 			" set 256 color
set termguicolors		" use real color
set splitright 			" split right
set splitbelow 			" split below
set guifont=Fira\ Code:h11      " GUI font
" set foldmethod=marker
" set re=1
set title                       " dynamic title
set autowrite                   " save before make

" lightline
let g:lightline = { 'colorscheme': 'tokyonight' }
" let g:lightline = { 'colorscheme': 'iceberg' }
" let g:lightline = { 'colorscheme': 'nord' }

" snippets
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsEditSplit="vertical"

" tokyonight
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
" colorscheme tokyonight
colorscheme iceberg
" let g:monochrome_italic_comments = 1
" colorscheme monochrome

" save folding
" augroup remember_folds
"     autocmd!
"     autocmd BufWinLeave * mkview
"     autocmd BufWinEnter * silent! loadview
" augroup END

" coc using tab
"
function! CheckBackSpace() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" Insert <tab> when previous text is space, refresh completion if not.
inoremap <silent><expr> <TAB>
    \ coc#pum#visible() ? coc#pum#next(1):
    \ CheckBackSpace() ? "\<Tab>" :
    \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"



" inoremap <silent><expr> <TAB>
"     \ pumvisible() ? "\<C-n>" :
"     \ <SID>check_back_space() ? "\<TAB>" :
"     \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" function! s:check_back_space() abort
"     let col = col('.') - 1
"     return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" TableMode
let g:table_mode_corner='|'
let g:table_mode_tableize_map = '<Leader>tz'

"hexokinase
let g:Hexokinase_highlighters = ['backgroundfull']
" let g:Hexokinase_highlighters = ['virtual']

" au FileType tex iab aln \begin{align*}<CR>\end{align*}<Up><Esc><S-A>
" au FileType tex iab br( \left(\right)<Left><Left>
"
" context
let g:context_add_mappings = 0

let g:slime_target = 'neovim'
let g:slime_dont_ask_default = 1

