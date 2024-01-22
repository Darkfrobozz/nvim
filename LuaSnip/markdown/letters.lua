local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

return {
	s({trig=";a", snippetType="autosnippet"},
		{
			t("\\alpha"),
		}
	),
	s({trig=";b", snippetType="autosnippet"},
		{
			t("\\beta"),
		}
	),
	s({trig=";g", snippetType="autosnippet"},
		{
			t("\\gamma"),
		}
	),
}

