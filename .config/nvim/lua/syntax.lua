-- " Commentary
-- autocmd Filetype pascal set commentstring={\ %s}
-- autocmd Filetype octave set commentstring=%%s
-- autocmd Filetype asm set commentstring=;%s
-- autocmd Filetype svelte set commentstring=<!--%s-->

--
-- augroup filetypedetect
--     au! BufRead,BufNewFile *.m,*.oct set filetype=octave
--     au! BufRead,BufNewFile *.pro set filetype=prolog
--     au! BufRead,BufNewFile *.edir set filetype=edir
--     au! BufRead,BufNewFile *.mjs set filetype=mathjs
-- augroup END
--
vim.filetype.add({
    extension = {
        m    = "octave",
        oct  = "octave",
        edir = "edir",
        mjs  = "mathjs",
        pro  = "prolog",
    },
})

vim.cmd [[autocmd Filetype foam set commentstring=//\ %s]]
vim.cmd [[autocmd Filetype openscad set commentstring=//\ %s]]
