" Line
nnoremap E $
vnoremap E $
nnoremap B ^
vnoremap B ^

" Windows and Tabs
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-t> :tabnew<CR>
nnoremap <Leader>t :tabnew<CR>
nnoremap <Leader>tt :tabnew<CR>
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <Leader>q :q<CR>
nnoremap <Leader>v :vsplit<CR>
nnoremap <Right> :vertical resize -5<CR>
nnoremap <Left> :vertical resize +5<CR>

" File
nnoremap gf <C-w>gf
nnoremap <C-o> :Ranger<CR>
nnoremap <Leader>o :Ranger<CR> 
nnoremap <Leader>O :RangerNewTab<CR> 

" Clipboard
nnoremap <Leader>y "+y
vnoremap <Leader>y "+y
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P

" Miscs
nnoremap <C-k> :Commentary<CR>
" nnoremap <C-j> o<Esc>
" nnoremap <Leader>n :set invrelativenumber<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>r :R<CR>
tnoremap <Esc> <C-\><C-n>
map <Space> <Leader>
" map ; :

  " Find and Replace
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
" vnoremap <C-R> :s/\%V\%V//gc<Left><Left><Left><Left><Left><Left>
  
  " Tab indenting
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
nnoremap <A-a> <C-a>
vnoremap <A-a> <C-a>
nnoremap <C-a> ggVG

  " Line movement
nnoremap H 10h
nnoremap L 10l
nnoremap <C-j> J
nnoremap J 10j 
nnoremap K 10k
vnoremap J :move '>+1<CR>gv-gv
vnoremap K :move '<-2<CR>gv-gv

" Latex only
au FileType tex nnoremap j gj
au FileType tex nnoremap k gk
au FileType tex vnoremap j gj
au FileType tex vnoremap k gk

" FZF
nnoremap <Leader>f :Files<CR>
