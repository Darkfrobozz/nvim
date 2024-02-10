return {
	s(
		{trig = "hi"},
		{
			t("hello world")
		}
	),
	s( { trig="hip", desc="Multiple edits in hello world" }, -- adding a trigger and description
		fmta( --adding a format string
			[[
			Hello world <>
			Good bye <>
			]],
			{ i(1), rep(1) } -- adding insert nodes if used
		),
		{  } -- More custom options
	)
}
