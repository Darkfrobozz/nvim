vim.api.nvim_set_keymap('n', '<C-e>', ':Explore<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':bdelete<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'b', ':bnext<CR>', { noremap = true, silent = true})
vim.api.nvim_create_user_command(
    'Run',
    function(opts)
	RunInCurrentDir(opts.args)
    end,
    { nargs = 1}
)

