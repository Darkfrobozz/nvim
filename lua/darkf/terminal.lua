function RunInCurrentDir(cmd)
	local current_dir = vim.fn.expand('%:p:h')
	vim.cmd('cd ' .. current_dir)
	vim.cmd('!' .. cmd)
	vim.cmd('cd -')
end
