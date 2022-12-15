require("dapui").setup()


-- Debugger keymaps
vim.keymap.set("n", "<F5>", function() 
  local dap = require("dap")
  if not dap.session() then dap.repl.open() end
  dap.continue() 
end)
vim.keymap.set("n", "<S-F5>", function() require("dap").terminate() end)
vim.keymap.set("n", "<space>dr", function() require("dap").repl.toggle() end)
vim.keymap.set("n", "<space>dK", function() require("dap.ui.widgets").hover() end)
vim.keymap.set("n", "<F9>", function() require("dap").toggle_breakpoint() end)
vim.keymap.set("n", "<F10>", function() require("dap").step_over() end)
vim.keymap.set("n", "<F11>", function() require("dap").step_into() end)
vim.keymap.set("n", "<space>dl", function() require("dap").run_last() end)


-- vim.keymap.set("n", "<space>dc", function() require("dap").continue() end)
-- vim.keymap.set("n", "<space>dr", function() require("dap").repl.toggle() end)
-- vim.keymap.set("n", "<space>dK", function() require("dap.ui.widgets").hover() end)
-- vim.keymap.set("n", "<space>dt", function() require("dap").toggle_breakpoint() end)
-- vim.keymap.set("n", "<space>dso", function() require("dap").step_over() end)
-- vim.keymap.set("n", "<space>dsi", function() require("dap").step_into() end)
-- vim.keymap.set("n", "<space>dl", function() require("dap").run_last() end)


