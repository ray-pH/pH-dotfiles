-- functions
local nmap = function(lhs,rhs) vim.keymap.set('n', lhs, rhs) end
local vmap = function(lhs,rhs) vim.keymap.set('v', lhs, rhs) end
local create_command = vim.api.nvim_create_user_command

-- Close
nmap('<C-d>', ':q<CR>')

-- Windows and Tabs
nmap('<C-l>', '<C-w>l')
nmap('<C-h>', '<C-w>h')
nmap('<C-t>', ':tabnew<CR>')
nmap('<Leader>t', ':tabnew<CR>')
nmap('<Leader>tt', ':tabnew<CR>')
nmap('<Tab>', 'gt')
nmap('<S-Tab>', 'gT')
nmap('<Leader>q', ':q<CR>')
nmap('<Leader>v', ':vsplit<CR>')
nmap('<Right>', ':vertical resize -5<CR>')
nmap('<Left>', ':vertical resize +5<CR>')
nmap('<Leader>n', ':NERDTreeToggle<CR>')

-- clipboard
nmap('<Leader>y', '"+y')
vmap('<Leader>y', '"+y')
nmap('<Leader>p', '"+p')
nmap('<Leader>P', '"+P')
nmap('<Leader>P', '"+P')
nmap('x', '"_x')
vmap('x', '"_x')

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

-- copilot
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

-- " Latex only
-- au FileType tex nnoremap j gj
-- au FileType tex nnoremap k gk
-- au FileType tex vnoremap j gj
-- au FileType tex vnoremap k gk
-- 
-- " FZF
-- nnoremap <Leader>f :Files<CR>
