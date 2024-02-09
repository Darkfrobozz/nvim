vim.api.nvim_set_keymap('n', '<C-e>', ':Explore<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-J>', ':terminal<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':bdelete!<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'b', ':bnext<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true})

-- Capitalize
vim.api.nvim_set_keymap('n', 'R', '~', { noremap = true, silent = true})

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

-- Moving lines and blocks
local map = vim.api.nvim_set_keymap

map( "x", "<A-left>", "<Plug>GoVSMLeft", {} )
map( "x", "<A-down>", "<Plug>GoVSMDown", {} )
map( "x", "<A-up>", "<Plug>GoVSMUp", {} )
map( "x", "<A-right>", "<Plug>GoVSMRight", {} )

map( "n", "<C-left>", "<Plug>GoNSDLeft", {} )
map( "n", "<C-down>", "<Plug>GoNSDDown", {} )
map( "n", "<C-up>", "<Plug>GoNSDUp", {} )
map( "n", "<C-right>", "<Plug>GoNSDRight", {} )

map( "x", "<C-left>", "<Plug>GoVSDLeft", {} )
map( "x", "<C-down>", "<Plug>GoVSDDown", {} )
map( "x", "<C-up>", "<Plug>GoVSDUp", {} )
map( "x", "<C-right>", "<Plug>GoVSDRight", {} )

map( "n", "<A-left>", "<Plug>GoNSMLeft", {} )
map( "n", "<A-down>", "<Plug>GoNSMDown", {} )
map( "n", "<A-up>", "<Plug>GoNSMUp", {} )
map( "n", "<A-right>", "<Plug>GoNSMRight", {} )

-- Rectanglur visual selection

vim.api.nvim_set_keymap('n', '<leader>#', ':noh<CR>', { noremap = true, silent = true})
-- Rectanglur visual selection

vim.api.nvim_set_keymap('n', '<C-v>', '<C-q>', { noremap = true, silent = true})

-- Copying and pasting from clipboard

-- Copying
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>Y', '"+yg', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>y', '"+y', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>yy', '"+yy', { noremap = true, silent = true})

-- Pasting
vim.api.nvim_set_keymap('n', '<leader>p', '"+p', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>P', '"+P', { noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<leader>p', '"+p', { noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<leader>P', '"+P', { noremap = true, silent = true})

vim.api.nvim_create_user_command(
    'Run',
    function(opts)
	RunInCurrentDir(opts.args)
    end,
    { nargs = 1}
)

--Debugging
vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)
vim.keymap.set('n', '<F6>', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<F7>', function() require('dap').set_breakpoint() end)
vim.keymap.set('n', '<F2>', function()
	require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
vim.keymap.set('n', '<F8>', function() require('dap').repl.open() end)
vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end)
vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
  require('dap.ui.widgets').hover()
end)
vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
  require('dap.ui.widgets').preview()
end)

-- Some weird stuff going on with these :
vim.keymap.set('n', '<Leader>df', function()
  local widgets = require('dap.ui.widgets')
  widgets.centered_float(widgets.frames)
end)
vim.keymap.set('n', '<Leader>ds', function()
  local widgets = require('dap.ui.widgets')
  widgets.centered_float(widgets.scopes)
end)
