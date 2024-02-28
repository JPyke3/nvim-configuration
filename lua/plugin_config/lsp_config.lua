require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "tsserver", "eslint", "omnisharp", "yamlls", "jsonls", "texlab", "svelte", "nil_ls" },
})

require("lspconfig").lua_ls.setup {}
require("lspconfig").tsserver.setup {}
require("lspconfig").eslint.setup {}
require("lspconfig").omnisharp.setup {}
require("lspconfig").yamlls.setup {
	yaml = {
		schemaStore = {
			url = "https://www.schemastore.org/api/json/catalog.json",
			enable = true
		},
		format = {
			enable = true,
			singleQuote = true,
		},
		validate = true,
		hover = true,
		completion = true,
		customTags = {
			"!fn",
			"!And",
			"!If",
			"!Not",
			"!Equals",
			"!Or",
			"!FindInMap sequence",
			"!Base64",
			"!Cidr",
			"!Ref",
			"!Ref Scalar",
			"!Sub",
			"!GetAtt",
			"!GetAZs",
			"!ImportValue",
			"!Select",
			"!Split",
			"!Join sequence",
		},
		schemas = {
			['https://raw.githubusercontent.com/aws/serverless-application-model/develop/samtranslator/validator/sam_schema/schema.json'] = "template.yaml"
		}
	}
}
require("lspconfig").jsonls.setup {
	settings = {
		['json'] = {
			schemaStore = {
				enable = true
			},
			schemas = {
				{
					fileMatch = { "**.sf.json" },
					url = "https://gist.githubusercontent.com/studds/b9dbba056eaaaf42dfe70c191c12d848/raw/14df020696e5de1910174fe00e1ecfa23b99e942/aws-step-function.json"
				}
			}
		}
	}
}
require("lspconfig").texlab.setup {}
require("lspconfig").svelte.setup {}
require("lspconfig").nil_ls.setup {}

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('UserLspConfig', {}),
	callback = function(ev)
		-- Enable completion triggered by <c-x><c-o>
		vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

		-- Buffer local mappings.
		-- See `:help vim.lsp.*` for documentation on any of the below functions
		local opts = { buffer = ev.buf }
		vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
		vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
		vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
		vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
		vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
		vim.keymap.set('n', '<space>wl', function()
			print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		end, opts)
		vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
		vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
		vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
		vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
		vim.keymap.set('n', '<space>f', function()
			vim.lsp.buf.format { async = true }
		end, opts)
	end,
})
