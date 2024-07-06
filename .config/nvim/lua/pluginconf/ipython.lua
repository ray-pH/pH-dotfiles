vim.g.slime_target = "neovim"
vim.g.slime_dont_ask_default = 1
local create_command = vim.api.nvim_create_user_command

function IPythonOpen()
  -- open a new terminal in vertical split and run IPython
  vim.cmd("vnew")
  vim.cmd("call termopen('ipython3 --matplotlib')")
  vim.cmd("file ipython") -- name the new buffer

  -- set slime target to new terminal
  if not vim.g.slime_default_config then
    -- vim.g.slime_default_config = {}
    vim.cmd("let g:slime_default_config = {}")
  end
  -- vim.g.slime_default_config["jobid"] = vim.b.terminal_job_id
  vim.cmd("let g:slime_default_config['jobid'] = b:terminal_job_id")
  -- vim.api.nvim_get_current_win().terminal_job_id

  vim.cmd("wincmd p") -- switch to the previous buffer
end
-- " nnoremap <leader>ip :call IPythonOpen()<CR>
-- " nnoremap <Leader>c :IPythonCellExecuteCell<CR>
create_command('IPythonOpen', IPythonOpen, {})
vim.keymap.set("n", "<Leader>cc", ":IPythonCellExecuteCell<CR>", { noremap = true, silent = true })
