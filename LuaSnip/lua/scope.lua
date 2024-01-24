return {
	s(
		{
			trig="{",
			dscr="Introducing a scope on line"
		},
		{
			t("{ "),
			i(1),
			t(" }")
		}
	),
	s(
		{
			trig="{",
			dscr="Introducing a scope block"
		},
		{
			t({ "{", "	" }),
			i(1),
			t({ "", "}" })
		}
	),
}
