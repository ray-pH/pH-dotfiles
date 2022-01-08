" Remapping
source $HOME/.config/nvim/remap.vim
" Custom function and command
source $HOME/.config/nvim/func.vim
" Vundle
source $HOME/.config/nvim/plugins.vim
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
set iskeyword+=-		" treat - sep word as a single word
set formatoptions-=cro		" stop newline comment continuation
set clipboard=unnamedplus 	" use system clipboard
set t_Co=256 			" set 256 color
set termguicolors		" use real color
set splitright 			" split right
set splitbelow 			" split below
set guifont=Fira\ Code:h11      " GUI font

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
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" au FileType tex iab aln \begin{align*}<CR>\end{align*}<Up><Esc><S-A>
" au FileType tex iab br( \left(\right)<Left><Left>
