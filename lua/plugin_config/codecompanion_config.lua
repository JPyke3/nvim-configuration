vim.api.nvim_set_keymap("n", "<C-a>", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-a>", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<LocalLeader>a", "<cmd>CodeCompanionToggle<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<LocalLeader>a", "<cmd>CodeCompanionToggle<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "ga", "<cmd>CodeCompanionAdd<cr>", { noremap = true, silent = true })

-- Expand 'cc' into 'CodeCompanion' in the command line
vim.cmd([[cab cc CodeCompanion]])

require("codecompanion").setup({
	adapters = {
		llama3 = require("codecompanion.adapters").use("ollama", {
			schema = {
				model = {
					default = "llama3.1:8b-instruct-q8_0",
				},
				num_ctx = {
					default = 16384
				},
				num_predict = {
					default = -1
				},
			},
		}),
		codegemma = require("codecompanion.adapters").use("ollama", {
			schema = {
				model = {
					default = "codegemma"
				},
			},
		}),
	},
	strategies = {
		chat = {
			adapter = "llama3",
		},
		inline = {
			adapter = "codegemma",
		},
		agent = {
			adapter = "llama3",
		},
	},
})
