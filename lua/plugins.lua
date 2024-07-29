return {
    -- Mason and Null-LS
    {
        "jay-babu/mason-null-ls.nvim",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "williamboman/mason.nvim",
            "nvimtools/none-ls.nvim",
        },
    },

    -- Mason and LSP Configuration
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",

    -- Autocompletion
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "saadparwaiz1/cmp_luasnip",
    "L3MON4D3/LuaSnip",

    -- Formatters
    'mhartington/formatter.nvim',

    -- Language specific
    'lervag/vimtex', -- LaTeX
    'nuchs/vim-hypr-nav', -- Hyprland
    'mogelbrod/vim-jsonpath',
    'phelipetls/jsonpath.nvim',
    'b0o/schemastore.nvim', -- JSON schemas

    -- Telescope and Dependencies
    { 
        'nvim-telescope/telescope.nvim', 
        tag = '0.1.5', 
        dependencies = { 
            'nvim-lua/plenary.nvim', 
            'nvim-treesitter/nvim-treesitter',
            'nvim-tree/nvim-web-devicons',
        }
    },

	-- Theme
	'RRethy/base16-nvim',

    -- Icons
    "nvim-tree/nvim-web-devicons",

    -- Treesitter
    "nvim-treesitter/nvim-treesitter",

    -- Utility
    "stevearc/dressing.nvim", -- Optional: Improves the default Neovim UI
    "folke/neodev.nvim",
    "folke/neoconf.nvim",
    { "folke/which-key.nvim", event = "VeryLazy" },
    { "folke/trouble.nvim", event = "VeryLazy" },

    -- Copilot and AI tools
    {
        "jellydn/CopilotChat.nvim",
        opts = {
            mode = "split", -- newbuffer or split, default: newbuffer
        },
        build = function()
            vim.defer_fn(function()
                vim.cmd("UpdateRemotePlugins")
                vim.notify("CopilotChat - Updated remote plugins. Please restart Neovim.")
            end, 3000)
        end,
        event = "VeryLazy",
        keys = {
            { "<leader>cce", "<cmd>CopilotChatExplain<cr>", desc = "CopilotChat - Explain code" },
            { "<leader>cct", "<cmd>CopilotChatTests<cr>", desc = "CopilotChat - Generate tests" },
        },
    },
    "olimorris/codecompanion.nvim",
    "TabbyML/vim-tabby",

    -- Gitsigns
    "lewis6991/gitsigns.nvim",

    -- LSP Signature
    {
        "ray-x/lsp_signature.nvim",
        event = "VeryLazy",
        opts = {},
        config = function(_, opts) require 'lsp_signature'.setup(opts) end,
    },

    -- Obsidian for Note Taking
    {
        "epwalsh/obsidian.nvim",
        version = "*", -- recommended, use latest release instead of latest commit
        lazy = true,
        ft = "markdown",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        opts = {
            workspaces = {
                {
                    name = "personal",
                    path = "~/Documents/Jacobs-Brain",
                },
            },
        },
    },

    -- Status Line
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },

    -- Silicon for code images
    {
        'krivahtoo/silicon.nvim',
        build = './install.sh',
        branch = 'nvim-0.9'
    },

    -- Octo for GitHub
    { 'pwntester/octo.nvim', event = "VeryLazy" },

    -- Other Plugins
    'vimpostor/vim-tpipeline',

    -- Tmux Navigator
    {
        cmd = {
            "TmuxNavigateLeft",
            "TmuxNavigateDown",
            "TmuxNavigateUp",
            "TmuxNavigateRight",
            "TmuxNavigatePrevious",
        },
        keys = {
            { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
            { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
            { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
            { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
            { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
        },
        lazy = true,
    },
}
