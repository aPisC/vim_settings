local dap = require("dap")
local dapui = require("dapui")


-- Debugger keymaps
vim.keymap.set({'n', 'i'}, "<F5>", function() require("dap").continue() end)
vim.keymap.set({'n', 'i'}, "<S-F5>", function() require("dap").terminate() end)
vim.keymap.set({'n', 'i'}, "<F9>", function() require("dap").toggle_breakpoint() end)
vim.keymap.set({'n', 'i'}, "<F10>", function() require("dap").step_over() end)
vim.keymap.set({'n', 'i'}, "<F11>", function() require("dap").step_into() end)
vim.keymap.set("n", "<space>dr", function() require("dap").repl.toggle() end)
vim.keymap.set("n", "<space>dK", function() require("dap.ui.widgets").hover() end)
vim.keymap.set("n", "<space>dl", function() require("dap").run_last() end)

-- Dap UI setup
dapui.setup({
  layouts = {
    {
      elements = {
        {id = "breakpoints", size = 10},
        {id = "scopes", size = 0.66},
        -- "stacks",
        -- "watches",
      },
      size = 30,
      position = "left",
    },
    {
      elements = {
        "repl",
        -- "console",
      },
      size = 10,
      position = "bottom",
    },
  },
})


dap.listeners.after.event_initialized["dapui_config"] = function()
  vim.cmd(":NERDTreeClose")
  dapui.open()
end




