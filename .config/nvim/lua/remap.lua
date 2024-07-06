-- functions
local nmap = function(lhs,rhs) vim.keymap.set('n', lhs, rhs) end
local vmap = function(lhs,rhs) vim.keymap.set('v', lhs, rhs) end
local imap = function(lhs,rhs) vim.keymap.set('i', lhs, rhs) end
local create_command = vim.api.nvim_create_user_command

-- diagnostic
-- vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
nmap('<Leader>dd', vim.diagnostic.open_float)


-- Close
nmap('<C-d>', ':q<CR>')
-- nmap('<C-d>', ':bd<CR>')

-- Windows and Buffer
nmap('<C-l>', '<C-w>l')
nmap('<C-h>', '<C-w>h')
nmap('<C-t>', ':tabnew<CR>')
nmap('<Leader>t', ':tabnew<CR>')
nmap('<Leader>tt', ':tabnew<CR>')
nmap('<Tab>', 'gt')
nmap('<S-Tab>', 'gT')
--tab
nmap('<Leader><Right>', ':tabmove +1<CR>')
nmap('<Leader><Left>', ':tabmove -1<CR>')
-- buffer
-- nmap('<Leader>t', ':enew<CR>')
-- nmap('<Leader>tt', ':enew<CR>')
-- nmap('<Tab>', ':bnext<CR>')
-- nmap('<S-Tab>', ':bprevious<CR>')
-- buffer
nmap('<Leader>q', ':q<CR>')
nmap('<Leader>v', ':vsplit<CR>')
nmap('<Right>', ':vertical resize -5<CR>')
nmap('<Left>', ':vertical resize +5<CR>')

-- file manager
-- nmap('<Leader>n', ':NERDTreeToggle<CR>')
-- nmap('<Leader>n', ':Oil<CR>')
vim.keymap.set("n", "<leader>n", function()
   if vim.bo.filetype == 'oil' then
     require("oil").close()
   else
     require("oil").open()
   end
end, { desc = "File navigation" })

-- clipboard
nmap('<Leader>y', '"+y')
vmap('<Leader>y', '"+y')
nmap('<Leader>d', '"+d')
vmap('<Leader>d', '"+d')
nmap('<Leader>p', '"+p')
nmap('<Leader>P', '"+P')
-- blackhole
nmap('x', '"_x')
vmap('x', '"_x')
nmap('c', '"_c')
vmap('c', '"_c')

-- tab indenting
vmap('<S-Tab>', '<gv')
vmap('<Tab>', '>gv')
nmap('<A-a>', '<C-a>')
nmap('<A-x>', '<C-x>')
vmap('<A-a>', '<C-a>')
vmap('<A-x>', '<C-x>')
nmap('<C-a>', 'ggVG')

-- line movement
nmap('<C-j>', 'J')
nmap('J', '10j')
nmap('K', '10k')
nmap('H', '10h')
nmap('L', '10l')
vmap('J', ":move '>+1<CR>gv-gv")
vmap('K', ":move '<-2<CR>gv-gv")

-- file write
create_command('Q', ':q', {})
create_command('X', ':x', {})
create_command('W', ':w', {})

-- run file
create_command('R', ':make', {})

-- find and replace
vmap('<C-r>', '"hy:%s/<C-r>h//gc<left><left><left>')

-- -- copilot
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
nmap('<C-p>', ':Copilot panel<CR>')
imap('<C-p>', '<C-o>:Copilot panel<CR>')

-- ipython
vim.keymap.set("n", "<leader>ip", ":IPythonOpen<CR>", { noremap = true, silent = true })

-- telescope
nmap('<Leader>ss', ':Telescope lsp_document_symbols<CR>')
nmap('<Leader>sd', ':Telescope diagnostics<CR>')

-- " Latex only
-- au FileType tex nnoremap j gj
-- au FileType tex nnoremap k gk
-- au FileType tex vnoremap j gj
-- au FileType tex vnoremap k gk
vim.cmd [[
  augroup latex
    autocmd!
    autocmd FileType tex nnoremap j gj
    autocmd FileType tex nnoremap k gk
    autocmd FileType tex vnoremap j gj
    autocmd FileType tex vnoremap k gk
  augroup END
]]

-- 
-- " FZF
-- nnoremap <Leader>f :Files<CR>
--
-- fugitive
nmap('<Leader>gg', ':vertical G<CR>')

-- lspsaga
nmap('<leader>rn', ':Lspsaga rename<CR>')
nmap('<leader>ca', ':Lspsaga code_action<CR>')

nmap('gd', ':Lspsaga goto_definition<CR>')
nmap('gr', ':Lspsaga lsp_finder<CR>')
nmap('<leader>k', ':Lspsaga hover_doc<CR>')
nmap('<leader>K', ':Lspsaga peek_definition<CR>')
