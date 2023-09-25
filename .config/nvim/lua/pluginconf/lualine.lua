require('lualine').setup({
  options = {
    icons_enabled = false,
    -- theme = 'iceberg',
    theme = 'modus-vivendi',
    -- theme = 'ayu_light',
    component_separators = '|',
    section_separators = '',
    always_divide_middle = false,
  },
  -- tabline = {
  --   lualine_a = {
  --     {
  --       "tabs",
  --       max_length = vim.o.columns / 3, -- Maximum width of tabs component.
  --       mode = 1, -- 0: Shows tab_nr 1: Shows tab_name 2: Shows tab_nr + tab_name
  --       tabs_color = {
  --         -- active = 'lualine_b_normal',
  --         inactive = 'lualine_b_normal'
  --       },
  --       -- tabs_color = {
  --         -- active = "lualine_{section}_normal",
  --         -- inactive = "lualine_{section}_inactive",
  --       -- },
  --       -- fmt = function(name, context)
  --       --   -- Show + if buffer is modified in tab
  --       --   local buflist = vim.fn.tabpagebuflist(context.tabnr)
  --       --   local winnr = vim.fn.tabpagewinnr(context.tabnr)
  --       --   local bufnr = buflist[winnr]
  --       --   local mod = vim.fn.getbufvar(bufnr, "&mod")
  --       --   return name .. (mod == 1 and " +" or "")
  --       -- end,
  --     },
  --   },
  -- },
})

-- require('lualine').setup {
--   options = {
--     icons_enabled = true,
--     theme = 'auto',
--     component_separators = { left = '', right = ''},
--     section_separators = { left = '', right = ''},
--     disabled_filetypes = {
--       statusline = {},
--       winbar = {},
--     },
--     ignore_focus = {},
--     always_divide_middle = true,
--     globalstatus = false,
--     refresh = {
--       statusline = 1000,
--       tabline = 1000,
--       winbar = 1000,
--     }
--   },
--   sections = {
--     lualine_a = {'mode'},
--     lualine_b = {'branch', 'diff', 'diagnostics'},
--     lualine_c = {'filename'},
--     lualine_x = {'encoding', 'fileformat', 'filetype'},
--     lualine_y = {'progress'},
--     lualine_z = {'location'}
--   },
--   inactive_sections = {
--     lualine_a = {},
--     lualine_b = {},
--     lualine_c = {'filename'},
--     lualine_x = {'location'},
--     lualine_y = {},
--     lualine_z = {}
--   },
--   tabline = {},
--   winbar = {},
--   inactive_winbar = {},
--   extensions = {}
-- }
