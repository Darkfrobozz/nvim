return {
	s(
		{trig = "hi"},
		{
			t("hello world")
		}
	),
	s( { trig="fnr", desc="This is a snippet for function with return" }, -- adding a trigger and description
		fmta( --adding a format string
			[[
			fn <>(<>) ->> <> {
				<>
			}
			]],
			{ i(1),
			  i(2),
			  i(3),
			  i(4) } -- adding insert nodes if used
		),
		{  } -- More custom options
	),
	s( { trig="struct", desc="This is a snippet for creating a struct" }, -- adding a trigger and description
		fmta( --adding a format string
			[[
			<> {
				<>
			}
			]],
			{ i(1), i(2) } -- adding insert nodes if used
		),
		{  } -- More custom options
	)
}
