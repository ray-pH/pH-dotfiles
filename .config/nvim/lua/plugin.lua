-- Install package manager
-- https://github.com/folke/lazy.nvim
-- `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  -- Git related plugins
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',

  -- Other
  'github/copilot.vim',
  -- 'preservim/nerdtree',
  'tpope/vim-sleuth',   -- Detect tabstop and shiftwidth automatically
  'tpope/vim-surround',
  'jiangmiao/auto-pairs',
  'deris/vim-shot-f',
  'numToStr/Comment.nvim',
  'norcalli/nvim-colorizer.lua',
  'nvim-lualine/lualine.nvim',
  -- 'kdheepak/tabline.nvim',
  -- 'itchyny/lightline.vim',
  'mg979/vim-visual-multi',
  'lambdalisue/suda.vim',

  'dstein64/vim-startuptime',
  'leafOfTree/vim-matchtag',
  'folke/zen-mode.nvim',

  -- ipython TODO : this took too long to load
  -- 'jpalardy/vim-slime',
  -- 'hanschen/vim-ipython-cell',

  -- Colorschemes
  'navarasu/onedark.nvim',
  'cocopon/iceberg.vim',
  'arcticicestudio/nord-vim',
  'tomasiser/vim-code-dark',
  'drewtempelmeyer/palenight.vim',
  'ayu-theme/ayu-vim',
  'joshdick/onedark.vim',
  'ghifarit53/tokyonight-vim',
  'patstockwell/vim-monokai-tasty',
  'fxn/vim-monochrome',
  'projekt0n/github-nvim-theme',

  -- Plugin with configs
  {
    -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      { 'williamboman/mason.nvim', config = true },
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      { 'j-hui/fidget.nvim', tag = 'legacy', opts = {} },

      -- Additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
    },
  },

  {
    -- Autocompletion
    'hrsh7th/nvim-cmp',
    dependencies = {
      'L3MON4D3/LuaSnip', -- Snippet Engine & its associated nvim-cmp source
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp', -- Adds LSP completion capabilities
      'rafamadriz/friendly-snippets', -- Adds a number of user-friendly snippets
    },
  },


  -- Fuzzy Finder (files, lsp, etc)
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      -- Fuzzy Finder Algorithm which requires local dependencies to be built.
      -- Only load if `make` is available. Make sure you have the system
      -- requirements installed.
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        -- NOTE: If you are having trouble with this installation,
        --       refer to the README for telescope-fzf-native for more instructions.
        build = 'make',
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },
    },
  },

  -- Treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = { 'nvim-treesitter/nvim-treesitter-textobjects', },
    build = ':TSUpdate',
  },

  -- Neotree
  -- {
  --   "nvim-neo-tree/neo-tree.nvim",
  --   branch = "v3.x",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     -- "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
  --     "MunifTanjim/nui.nvim",
  --   }
  -- },

  -- Oil
  {
    'stevearc/oil.nvim',
    opts = {},
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },

}, {})


require('pluginconf/treesitter')
require('pluginconf/nvim-cmp')
require('pluginconf/comment')
require('pluginconf/lsp')
require('pluginconf/lualine')
require('colorizer').setup()
require('pluginconf/ipython')
require('pluginconf/oil')
require('pluginconf/zenmode')
