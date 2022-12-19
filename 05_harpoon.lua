require("telescope").load_extension('harpoon')

vim.keymap.set('n', '<c-p><c-p>', ':Telescope find_files<cr>')
vim.keymap.set('i', '<c-p><c-p>', '<esc>:Telescope find_files<cr>')
vim.keymap.set('n', '<c-p><c-p><c-p>', ':Telescope commands<cr>')
vim.keymap.set('i', '<c-p><c-p><c-p>', '<esc>:Telescope commands<cr>')

vim.keymap.set({'n', 'i'}, "<C-p>", function() require("harpoon.ui").toggle_quick_menu() end)
vim.keymap.set({'n', 'i'}, "<C-p>m", function() require("harpoon.mark").toggle_file() end)
vim.keymap.set({'n', 'i'}, "<C-p>o", function() require("harpoon.ui").nav_next() end)
vim.keymap.set({'n', 'i'}, "<C-p><C-o>", function() require("harpoon.ui").nav_next() end)
vim.keymap.set({'n', 'i'}, "<C-p>i", function() require("harpoon.ui").nav_prev() end)
vim.keymap.set({'n', 'i'}, "<C-p><C-i>", function() require("harpoon.ui").nav_prev() end)
