vim.api.nvim_set_keymap('n', '<C-e>', ':Explore<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-J>', ':terminal<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':bdelete!<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'b', ':bnext<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true})


--Window Open and close
vim.api.nvim_set_keymap('n', '<leader><Esc>', '<C-w>q', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>h', '<C-w>s', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>v', '<C-w>v', { noremap = true, silent = true})

-- Movement
-- Start and end
vim.api.nvim_set_keymap('n', 'S', 'gg', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'E', 'G', { noremap = true, silent = true})

-- Window motions
vim.api.nvim_set_keymap('n', '<leader><right>', '<C-w><right>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader><left>', '<C-w><left>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader><up>', '<C-w><up>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader><down>', '<C-w><down>', { noremap = true, silent = true})

vim.api.nvim_create_user_command(
    'Run',
    function(opts)
	RunInCurrentDir(opts.args)
    end,
    { nargs = 1}
)

