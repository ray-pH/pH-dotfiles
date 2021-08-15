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
    endif
endfunction

command Pdf :! okular %:t:r.pdf >/dev/null 2>&1 &
command Run :call Runscript() 
command Compile :call CompileScript()
command RunInTerm :call RunFloatTerm()
command R :Run
command RR :RunInTerm
command CC :Compile

" common misstype
command Q :q
command X :x
command W :w
