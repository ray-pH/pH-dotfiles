vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.o.termguicolors = true   -- use real color
require("plugin") -- ./lua/plugin.lua
require("remap")  -- ./lua/remap.lua
require("func")   -- ./lua/func.lua

-- Setting syntax on
vim.wo.number = true
vim.o.cursorline = true   -- highlight line where cursor is
-- vim.o.relativenumber = true
-- vim.o.noshowmode = true  -- not showing --insert-- etc. in bottom left
-- set noshowmode			" not showing --insert-- etc. in bottom left
vim.o.showtabline =2
vim.o.expandtab  = true   -- expand tab to spaces
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.mouse = 'a'
-- vim.o.iskeyword = vim.o.iskeyword + '-'
-- " set iskeyword+=-		" treat - sep word as a single word
-- set formatoptions-=cro		" stop newline comment continuation
-- " set clipboard=unnamedplus 	" use system clipboard
vim.o.t_Co = 256             -- set 256 color
vim.o.termguicolors = true   -- use real color
vim.o.splitright = true
-- set splitbelow 			" split below
-- set guifont=Fira\ Code:h11      " GUI font
-- " set foldmethod=marker
-- " set re=1
vim.o.title = true
vim.o.autowrite = true  -- save before make
vim.o.ignorecase = true -- Case-insensitive searching UNLESS \C or capital in search
vim.o.smartcase = true

vim.cmd.colorscheme 'github_dark_dimmed'
