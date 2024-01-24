require('neodev').setup({

	}
)
require'lspconfig'.tsserver.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.lua_ls.setup{
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim', 'ls', 's', 'sn', 't', 'i', 'f', 'd', 'fmt', 'fmta', 'rep' }
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
			}
		}
	}
}
require'lspconfig'.marksman.setup{}
