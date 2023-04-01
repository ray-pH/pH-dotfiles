" Makeprg
au filetype python setlocal mp=python3\ %
au filetype cpp setlocal mp=g++\ %\ -o\ %:t:r\ &&\ ./%:t:r
au filetype pascal setlocal mp=fpc\ %\ &&\ ./%:t:r
au filetype cpp setlocal mp=g++\ %\ -o\ %:t:r\ &&\ ./%:t:r
au filetype c setlocal mp=gcc\ %\ -o\ %:t:r\ &&\ ./%:t:r
au filetype haskell setlocal mp=runhaskell\ %
au filetype rust setlocal mp=rustc\ %\ &&\ ./%:t:r
au filetype tex setlocal mp=pdflatex\ %
au filetype javascript setlocal mp=node\ %
au filetype mathjs setlocal mp=mathjs\ %
au filetype php setlocal mp=php\ %
au filetype sh setlocal mp=bash\ %
au filetype j setlocal mp=ijconsole\ %
au filetype r setlocal mp=Rscript\ %
au filetype ruby setlocal mp=ruby\ %
au filetype perl setlocal mp=perl\ %
au filetype java setlocal mp=javac\ %\ &&\ java\ %:t:r
au filetype go setlocal mp=go\ run\ %
au filetype julia setlocal mp=julia\ %
au filetype lua setlocal mp=lua\ %
au filetype processing setlocal mp=~/App/processing-3.5.4/processing-java\ --sketch=%:p:h\ --run
au filetype lisp setlocal mp=clisp\ %
au filetype kotlin setlocal mp=kotlinc\ %\ -include-runtime\ -d\ %:t:r.jar\ &&\ java\ -jar\ ./%:t:r.jar
au filetype octave setlocal mp=octave\ --persist\ %
au filetype asm setlocal mp=\ \ nasm\ -f\ elf64\ %\ &&\ ld\ -s\ -o\ %:t:r\ %:t:r.o\ &&\ ./%:t:r
au filetype prolog setlocal mp=swipl\ -l\ %
au filetype glsl setlocal mp=esshader\ -s\ %

" Runscript
"
function Runscript()
    :w 
    if &ft=='python'
        :!python3 % 
    elseif &ft=='pascal'
        " :!fpc % && ./%:t:r
        :!~/.fpc-3.2.0/lib/fpc/3.2.0/ppcx64 % && ./%:t:r
    elseif &ft=='cpp'
	:!g++ % -o %:t:r && ./%:t:r
    elseif &ft=='c'
	:!gcc % -o %:t:r && ./%:t:r
    elseif &ft=='haskell'
	:!runhaskell %
    elseif &ft=='rust'
	:!rustc % && ./%:t:r
    elseif &ft=='tex'
	:!pdflatex %
    elseif &ft=='javascript'
        :!node %
    elseif &ft=='mathjs'
        :!mathjs %
    elseif &ft=='php'
        :!php %
    elseif &ft=='sh'
        :!bash %
    elseif &ft=='j'
        :!ijconsole %
    elseif &ft=='r'
        :!Rscript %
    elseif &ft=='ruby'
        :!ruby %
    elseif &ft=='perl'
        :!perl %
    elseif &ft=='java'
        :!javac % && java %:t:r
    elseif &ft=='go'
        :!go run %
    elseif &ft=='julia'
        :!julia %
    elseif &ft=='lua'
        :!lua %
    elseif &ft=='processing'
        " :!pde --sketch=%:p:h  --run
        :!~/App/processing-3.5.4/processing-java --sketch=%:p:h --run
    elseif &ft=='lisp'
        :!clisp %
    elseif &ft=='kotlin'
        :!kotlinc % -include-runtime -d %:t:r.jar && java -jar ./%:t:r.jar
    elseif &ft=='octave'
        :!octave --persist %
    elseif &ft=='asm'
        :!  nasm -f elf64 % && ld -s -o %:t:r %:t:r.o && ./%:t:r
    elseif &ft=='prolog'
        :!swipl -l %
    elseif &ft=='glsl'
        :!esshader -s %
    endif
endfunction

function CompileScript()
    :w
    if &ft=='cpp'
	:!g++ % -o %:t:r
    endif
endfunction

function RunFloatTerm()
    :w
    if &ft=='cpp'
	:!g++ % -o %:t:r
        :FloatermNew!./%:t:r
    elseif &ft=='haskell'
	:FloatermNew!runhaskell %
    elseif &ft=='octave'
        :FloatermNew!octave --persist %
    elseif &ft=='prolog'
        :FloatermNew!swipl -l %
    elseif &ft=='python'
        :FloatermNew!python3 % 
    endif
endfunction

command Pdf :! okular %:t:r.pdf >/dev/null 2>&1 &
command Run :call Runscript() 
command Compile :call CompileScript()
command RunInTerm :call RunFloatTerm()
" command R :Run
command R :make
command RR :RunInTerm
command C :Compile

cabbrev r <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'R' : 'r')<CR>

" common misstype
command Q :q
command X :x
command W :w

" COC
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Use <leader>k to show documentation in preview window
nnoremap <leader>k :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('<leader>k', 'in')
  endif
endfunction

" Mappings for CoCList
" Show all diagnostics
nnoremap <silent><nowait> <leader>dg  :<C-u>CocList diagnostics<cr>

" Remap for rename current word
 nmap <leader>rn <Plug>(coc-rename)
