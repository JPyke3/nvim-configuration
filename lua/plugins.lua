return {
	"folke/neodev.nvim",
	'RRethy/base16-nvim',
	{ "folke/which-key.nvim", event = "VeryLazy" },
	"folke/neoconf.nvim",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	"huggingface/llm.nvim",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"saadparwaiz1/cmp_luasnip",
	"L3MON4D3/LuaSnip",
	{ 'nvim-telescope/telescope.nvim', tag = '0.1.5',     dependencies = { 'nvim-lua/plenary.nvim', 'nvim-treesitter/nvim-treesitter' } },
	"lewis6991/gitsigns.nvim",
	"nvim-tree/nvim-web-devicons",
	{
		"jellydn/CopilotChat.nvim",
		opts = {
			mode = "split", -- newbuffer or split  , default: newbuffer
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
			{ "<leader>cct", "<cmd>CopilotChatTests<cr>",   desc = "CopilotChat - Generate tests" },
		},
	},
	{ "folke/trouble.nvim",            event = "VeryLazy" },
	"b0o/schemastore.nvim",
	{ 'pwntester/octo.nvim', event = "VeryLazy" },
	requires = {
		'nvim-lua/plenary.nvim',
		'nvim-telescope/telescope.nvim',
		'nvim-tree/nvim-web-devicons',
	},
	'lervag/vimtex',
	{
		'krivahtoo/silicon.nvim',
		build = './install.sh',
		branch = 'nvim-0.9'
	},
	'mogelbrod/vim-jsonpath',
	'phelipetls/jsonpath.nvim',
	'vimpostor/vim-tpipeline',
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' }
	},
	{
	  "epwalsh/obsidian.nvim",
	  version = "*",  -- recommended, use latest release instead of latest commit
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
			  }
		  },
	  }
	},
	'nuchs/vim-hypr-nav',
	{
	  "ray-x/lsp_signature.nvim",
	  event = "VeryLazy",
	  opts = {},
	  config = function(_, opts) require'lsp_signature'.setup(opts) end
	},
	'nvimtools/none-ls.nvim',
	cmd = {
		"TmuxNavigateLeft",
		"TmuxNavigateDown",
		"TmuxNavigateUp",
		"TmuxNavigateRight",
		"TmuxNavigatePrevious",
	},
	keys = {
		{ "<c-h>",  "<cmd><C-U>TmuxNavigateLeft<cr>" },
		{ "<c-j>",  "<cmd><C-U>TmuxNavigateDown<cr>" },
		{ "<c-k>",  "<cmd><C-U>TmuxNavigateUp<cr>" },
		{ "<c-l>",  "<cmd><C-U>TmuxNavigateRight<cr>" },
		{ "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
	},
	lazy = true
}
