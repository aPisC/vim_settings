-- Harpoon commands
vim.api.nvim_create_user_command('Harpoon', function() require("harpoon.ui").toggle_quick_menu() end, {})
vim.api.nvim_create_user_command('HarpoonClear', function() require("harpoon.mark").clear_all() end, {})


-- LSP
vim.api.nvim_create_user_command('LspFormat', function() vim.lsp.buf.format { async = false } end, {})
-- vim.api.nvim_create_autocmd({"CursorHold"}, { pattern = {"*"}, callback=vim.lsp.buf.hover })
--
-- REST
vim.api.nvim_create_user_command('RestRun', function() require("rest-nvim").run() end, {})

