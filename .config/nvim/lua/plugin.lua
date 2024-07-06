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
    -- Other
    -- 'preservim/nerdtree',
    'tpope/vim-sleuth',   -- Detect tabstop and shiftwidth automatically
    'tpope/vim-surround',
    'jiangmiao/auto-pairs',
    'deris/vim-shot-f',
    'numToStr/Comment.nvim',
    'norcalli/nvim-colorizer.lua',
    -- 'nvim-lualine/lualine.nvim',
    -- 'kdheepak/tabline.nvim',
    'itchyny/lightline.vim',
    'mg979/vim-visual-multi',
    'lambdalisue/suda.vim',

    'dstein64/vim-startuptime',
    'leafOfTree/vim-matchtag',
    'folke/zen-mode.nvim',

    'ggandor/leap.nvim',
    'junegunn/vim-easy-align',
    'sirtaj/vim-openscad',
    -- 'alfiogn/OpenFOAM-vim',
    'lervag/vim-foam',

    -- AI assistant
    'github/copilot.vim',
    -- {
    --   'Exafunction/codeium.vim',
    --   event = 'BufEnter',
    --   config = function ()
    --     vim.g.codeium_disable_bindings = 1
    --   -- Change '<C-g>' here to any keycode you like.
    --     vim.keymap.set('i', '<C-j>', function () return vim.fn['codeium#Accept']() end, { expr = true })
    --     vim.keymap.set('i', '<C-q>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
    --     vim.keymap.set('i', '<C-w>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
    --     -- vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
    --   end
    -- },
    --
    -- {
    --   'akinsho/bufferline.nvim',
    --   version = "*",
    --   dependencies = 'nvim-tree/nvim-web-devicons'
    -- },
    --
    {
        "tversteeg/registers.nvim",
        name = "registers",
        keys = {
            { "\"",    mode = { "n", "v" }, id = '1'},
        },
        cmd = "Registers",
    },

    -- ipython TODO : this took too long to load
    {
        'hanschen/vim-ipython-cell',
        lazy = true,
        cmd = "IPythonOpen",
        dependencies = {
            'jpalardy/vim-slime',
        },
        config = function()
            require('pluginconf/ipython')
        end
    },

    -- Git related plugins
    'tpope/vim-fugitive',
    -- 'tpope/vim-rhubarb',
    'lewis6991/gitsigns.nvim',
    {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",         -- required
            "sindrets/diffview.nvim",        -- optional - Diff integration

            -- Only one of these is needed, not both.
            "nvim-telescope/telescope.nvim", -- optional
            "ibhagwan/fzf-lua",              -- optional
        },
        config = true
    },

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
    'catppuccin/vim',

    -- svelte
    'othree/html5.vim',
    'pangloss/vim-javascript',
    'evanleck/vim-svelte',

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
        'nvimdev/lspsaga.nvim',
        config = function()
            require('lspsaga').setup({
                ui = { code_action = '' },
                symbol_in_winbar = { enable = false,}
                -- code_action_prompt = { enable = false, }
            })
        end,
        dependencies = {
            'nvim-treesitter/nvim-treesitter',
            'nvim-tree/nvim-web-devicons',
        },
    },

    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    },

    -- {
    --     "lukas-reineke/headlines.nvim",
    --     dependencies = "nvim-treesitter/nvim-treesitter",
    --     config = true, -- or `opts = {}`
    -- },

    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            signs = false,
        }
    },

    {
        "nvim-treesitter/nvim-treesitter-context",
    },

    {
        -- Autocompletion
        'hrsh7th/nvim-cmp',
        dependencies = {
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-nvim-lsp', -- Adds LSP completion capabilities
            'L3MON4D3/LuaSnip', -- Snippet Engine & its associated nvim-cmp source
            'saadparwaiz1/cmp_luasnip',
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
    'stevearc/oil.nvim',
    -- { dir = "~/Code/nvim/oil.nvim" },
    -- dev
    'nvim-tree/nvim-web-devicons',

}, {})


require('pluginconf/treesitter')
require('pluginconf/nvim-cmp')
require('pluginconf/comment')
require('pluginconf/lsp')
-- require('pluginconf/lualine')
-- require('pluginconf/bufferline')
require('pluginconf/register')
require('colorizer').setup()
require('pluginconf/oil')
require('pluginconf/zenmode')
require('pluginconf/devicons')
require('leap').add_default_mappings()
require('pluginconf/gitsigns')
