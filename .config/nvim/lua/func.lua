-- au filetype python setlocal mp=python3\ %
-- au filetype python setlocal mp=python3\ %
-- au filetype cpp setlocal mp=g++\ %\ -o\ %:t:r\ &&\ ./%:t:r
-- au filetype pascal setlocal mp=fpc\ %\ &&\ ./%:t:r
-- au filetype cpp setlocal mp=g++\ %\ -o\ %:t:r\ &&\ ./%:t:r
-- au filetype c setlocal mp=gcc\ %\ -o\ %:t:r\ &&\ ./%:t:r
-- au filetype haskell setlocal mp=runhaskell\ %
-- au filetype rust setlocal mp=rustc\ %\ &&\ ./%:t:r
-- " au filetype rust setlocal mp=cargo\ run
-- au filetype tex setlocal mp=pdflatex\ %
-- au filetype javascript setlocal mp=node\ %
-- " au filetype typescript setlocal mp=ts-node\ %
-- au filetype typescript setlocal mp=deno\ run\ %
-- au filetype mathjs setlocal mp=mathjs\ %
-- au filetype php setlocal mp=php\ %
-- au filetype sh setlocal mp=bash\ %
-- au filetype j setlocal mp=jconsole\ %
-- au filetype r setlocal mp=Rscript\ %
-- au filetype ruby setlocal mp=ruby\ %
-- au filetype perl setlocal mp=perl\ %
-- au filetype java setlocal mp=javac\ %\ &&\ java\ %:t:r
-- au filetype go setlocal mp=go\ run\ %
-- au filetype julia setlocal mp=julia\ %
-- au filetype lua setlocal mp=lua\ %
-- au filetype processing setlocal mp=~/App/processing-3.5.4/processing-java\ --sketch=%:p:h\ --run
-- au filetype lisp setlocal mp=clisp\ %
-- au filetype kotlin setlocal mp=kotlinc\ %\ -include-runtime\ -d\ %:t:r.jar\ &&\ java\ -jar\ ./%:t:r.jar
-- au filetype octave setlocal mp=octave\ --persist\ %
-- au filetype asm setlocal mp=\ \ nasm\ -f\ elf64\ %\ &&\ ld\ -s\ -o\ %:t:r\ %:t:r.o\ &&\ ./%:t:r
-- au filetype prolog setlocal mp=swipl\ -l\ %
-- au filetype glsl setlocal mp=esshader\ -s\ %


vim.cmd('au filetype python setlocal mp=python3\\ %')
vim.cmd('au filetype cpp setlocal mp=g++\\ %\\ -o\\ %:t:r\\ &&\\ ./%:t:r')
vim.cmd('au filetype pascal setlocal mp=fpc\\ %\\ &&\\ ./%:t:r')
vim.cmd('au filetype cpp setlocal mp=g++\\ %\\ -o\\ %:t:r\\ &&\\ ./%:t:r')
vim.cmd('au filetype c setlocal mp=gcc\\ %\\ -o\\ %:t:r\\ &&\\ ./%:t:r')
vim.cmd('au filetype haskell setlocal mp=runhaskell\\ %')
vim.cmd('au filetype rust setlocal mp=rustc\\ %\\ &&\\ ./%:t:r')
-- vim.cmd('au filetype rust setlocal mp=cargo\\ run')
vim.cmd('au filetype tex setlocal mp=pdflatex\\ %')
-- vim.cmd('au filetype javascript setlocal mp=node\\ %')
vim.cmd('au filetype javascript setlocal mp=bun\\ run\\ %')
-- vim.cmd('au filetype typescript setlocal mp=ts-node\\ %')
-- vim.cmd('au filetype typescript setlocal mp=deno\\ run\\ %')
vim.cmd('au filetype typescript setlocal mp=bun\\ run\\ %')
vim.cmd('au filetype mathjs setlocal mp=mathjs\\ %')
vim.cmd('au filetype php setlocal mp=php\\ %')
vim.cmd('au filetype sh setlocal mp=bash\\ %')
vim.cmd('au filetype j setlocal mp=jconsole\\ %')
vim.cmd('au filetype r setlocal mp=Rscript\\ %')
vim.cmd('au filetype ruby setlocal mp=ruby\\ %')
vim.cmd('au filetype perl setlocal mp=perl\\ %')
vim.cmd('au filetype java setlocal mp=javac\\ %\\ &&\\ java\\ %:t:r')
vim.cmd('au filetype go setlocal mp=go\\ run\\ %')
vim.cmd('au filetype julia setlocal mp=julia\\ %')
vim.cmd('au filetype lua setlocal mp=lua\\ %')
vim.cmd('au filetype processing setlocal mp=~/App/processing-3.5.4/processing-java\\ --sketch=%:p:h\\ --run')
vim.cmd('au filetype lisp setlocal mp=clisp\\ %')
vim.cmd('au filetype kotlin setlocal mp=kotlinc\\ %\\ -include-runtime\\ -d\\ %:t:r.jar\\ &&\\ java\\ -jar\\ ./%:t:r.jar')
vim.cmd('au filetype octave setlocal mp=octave\\ --persist\\ %')
vim.cmd('au filetype asm setlocal mp=\\ \\ nasm\\ -f\\ elf64\\ %\\ &&\\ ld\\ -s\\ -o\\ %:t:r\\ %:t:r.o\\ &&\\ ./%:t:r')
vim.cmd('au filetype prolog setlocal mp=swipl\\ -l\\ %')
vim.cmd('au filetype glsl setlocal mp=esshader\\ -s\\ %')
vim.cmd('au filetype ocaml setlocal mp=ocaml\\ %')


vim.cmd([[
  function! JSONFormat()
    let l:current_view = winsaveview()
    %!jq .
    call winrestview(l:current_view)
  endfunction

  command! JSONFormat call JSONFormat()
]])
