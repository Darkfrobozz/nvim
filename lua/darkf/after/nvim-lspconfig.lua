require('neodev').setup({

	}
)
require'lspconfig'.tsserver.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.lua_ls.setup{
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' }
			},
			workspace = {
				library = {
					vim.api.nvim_get_runtime_file("", true),
					"~/.local/share/nvim/lazy",
				},
				userThirdParty = "~/.local/share/nvim/lazy",
				checkThirdParty = false,
			}
		}
	}
}
require'lspconfig'.marksman.setup{}
