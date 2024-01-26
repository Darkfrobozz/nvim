local harpoon = require('harpoon')

--- REQUIRED
harpoon:setup()

-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
            results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
    }):find()
end

-- MAPPINGS
vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)

vim.keymap.set("n", "<leader>r", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>s", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>t", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>d", function() harpoon:list():select(4) end)
vim.keymap.set("n", "<leader>c", function() harpoon:list():clear() end)

local function harpoonRemove()
	local user_input = vim.fn.input('Buffer to remove: ')
	local num = tonumber(user_input)

	if num then
		harpoon:list():removeAt(num)
	else
		print('Not valid input')
	end
end

vim.keymap.set("n", "<leader>x", function() harpoonRemove() end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-left>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-right>", function() harpoon:list():next() end)


vim.keymap.set("n", "<leader>g", function() toggle_telescope(harpoon:list()) end,
    { desc = "Open harpoon window" })
