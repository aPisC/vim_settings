local telescope = require("telescope")

telescope.load_extension('harpoon')
telescope.load_extension('toggletasks')


-- Harpoon 
vim.keymap.set({'n', 'i'}, "<C-p>", function() require("harpoon.ui").toggle_quick_menu() end)
vim.keymap.set({'n', 'i'}, "<C-p><C-p>", function() require("harpoon.ui").toggle_quick_menu() end)
vim.keymap.set({'n', 'i'}, "<C-p>j", function() require("harpoon.ui").nav_next() end)
vim.keymap.set({'n', 'i'}, "<C-p>k", function() require("harpoon.ui").nav_prev() end)
vim.keymap.set({'n', 'i'}, "<C-p>h", function() require("harpoon.mark").toggle_file() end)

vim.api.nvim_create_user_command('Harpoon', function() require("harpoon.ui").toggle_quick_menu() end, {})
vim.api.nvim_create_user_command('HarpoonClear', function() require("harpoon.mark").clear_all() end, {})

-- Telescope selectors
vim.keymap.set({'n', 'i', 't'}, '<c-p>f', function() vim.cmd('Telescope git_files') end)
vim.keymap.set({'n', 'i', 't'}, '<c-p>a', function() vim.cmd('Telescope find_files') end)
vim.keymap.set({'n', 'i', 't'}, '<c-p>c', function() vim.cmd('Telescope commands') end)
vim.keymap.set({'n', 'i', 't'}, '<c-p>e', function() vim.cmd('Telescope diagnostics') end)
vim.keymap.set({'n'          }, '<c-p>u', function() vim.cmd('UndotreeToggle') end)
vim.keymap.set({'n', 'i', 't'}, '<c-p>g', function() require("neogit").open({kind="tab"})  end)
vim.keymap.set({'n', 'i', 't'}, '<c-p>gc', function() vim.cmd('Telescope git_commits') end)
vim.keymap.set({'n', 'i', 't'}, '<c-p>gb', function() vim.cmd('Telescope git_branches') end)

-- Open tasks
vim.keymap.set({'n', 'i'}, "<C-p>b", function() vim.cmd("Telescope toggletasks spawn") end)

-- Open terminal
vim.keymap.set({'n', 'i', 't'}, "<C-p>t", function() vim.cmd("ToggleTerm") end)


