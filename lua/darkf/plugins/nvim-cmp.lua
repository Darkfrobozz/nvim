local symbol_map = {
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
}
local M = {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-nvim-lua",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"saadparwaiz1/cmp_luasnip",
		"L3MON4D3/LuaSnip",
		"hrsh7th/cmp-nvim-lsp-signature-help"
	},
}

M.config = function()
	local cmp = require("cmp")
	vim.opt.completeopt = { "menu", "menuone", "noselect" }

	cmp.setup({
		snippet = {
			expand = function(args)
				require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
			end,
		},
		window = {
			-- completion = cmp.config.window.bordered(),
			-- documentation = cmp.config.window.bordered(),
		},
		mapping = cmp.mapping.preset.insert({
			["<C-b>"] = cmp.mapping.scroll_docs(-4),
			["<C-f>"] = cmp.mapping.scroll_docs(4),
			["<C-Space>"] = cmp.mapping.complete(),
			["<C-a>"] = cmp.mapping.abort(),
			["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
		}),
		sources = cmp.config.sources({
			{ name = "nvim_lsp" },
			{ name = "nvim_lua" },
			{ name = "luasnip" }, -- For luasnip users.
			{ name = 'nvim_lsp_signature_help' },
			-- { name = "orgmode" },
		}, {
			{ name = "buffer" },
			{ name = "path" },
		}),
		formatting = {
			format = function(_, vim_item)
				vim_item.kind = (symbol_map[vim_item.kind] or "") .. " " .. vim_item.kind
				return vim_item
			end,
		}
	})

	cmp.setup.cmdline(":", {
		mapping = cmp.mapping.preset.cmdline(),
		sources = cmp.config.sources({
			{ name = "path" },
		}, {
			{ name = "cmdline" },
		}),
	})
end

return M

