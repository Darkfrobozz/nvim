return {
	s( {trig = "snippet", desc="expands into a snippet using fmta"},
		fmta(
			[==[
			s( { trig="<>", desc="<>" }, -- adding a trigger and description
				fmta( --adding a format string
					[[
					<>
					]],
					{ <> } -- adding insert nodes if used
				),
				{ <> } -- More custom options
			)
			]==],
			{
				i(1),
				i(2),
				i(3),
				i(4),
				i(5)
			}
		)
	)
}
