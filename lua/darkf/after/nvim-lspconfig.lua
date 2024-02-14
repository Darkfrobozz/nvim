require('lspkind').init({
    -- DEPRECATED (use mode instead): enables text annotations
    --
    -- default: true
    -- with_text = true,

    -- defines how annotations are shown
    -- default: symbol
    -- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
    mode = 'symbol_text',

    -- default symbol map
    -- can be either 'default' (requires nerd-fonts font) or
    -- 'codicons' for codicon preset (requires vscode-codicons font)
    --
    -- default: 'default'
    preset = 'codicons',

    -- override preset symbols
    --
    -- default: {}
    symbol_map = {
	Text = "\u{2018}",
	Method = "\u{21EA}",
	Function = "\u{0192}",
	Constructor = "\u{263C}",
	Field = "\u{2B58}",
	Variable = "x",
	Class = "\u{25EB}",
	Interface = "\u{2567}",
	Module = "\u{25A1}",
	Property = "\u{25A3}",
	Unit = "u",
	Value = "\u{0031}",
	Enum = "\u{EE10}",
	Keyword = "#",
	Snippet = "\u{203A}",
	Color = "\u{2022}",
	File = "\u{EE04}",
	Reference = "->",
	Folder = "<>",
	EnumMember = "\u{EE0B}",
	Constant = "\u{238B}",
	Struct = "\u{25CD}",
	Event = "!",
	Operator = "\u{2716}",
	TypeParameter = "\u{2387}",
    },
})

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
require'lspconfig'.rust_analyzer.setup{}

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
