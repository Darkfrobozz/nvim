local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
	s(
		{
			trig="ff",
			dscr="Expands 'ff' into '\frac{}{}'",
		},

		{
			t("\\frac{"),
			i(1),
			t("}{"),
			i(2),
			t("}"),
		}
	),
}
