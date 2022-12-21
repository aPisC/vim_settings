local lspconfig = require("lspconfig")

lspconfig.tsserver.setup({
  -- filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
})

-- Debugger
require("dap-vscode-js").setup({
  node_path = "node", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
  debugger_path = "/home/bendeguz/.config/nvim/plugged/vscode-js-debug", -- Path to vscode-js-debug installation.
  adapters = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost' }, -- which adapters to register in nvim-dap
  -- log_console_level = vim.log.levels.ERROR -- Logging level for output to console. Set to false to disable console output.
})
require("dap").configurations["typescript"] = {
  {
    type = "pwa-node",
    request = "launch",
    runtimeExecutable = "npm",
    name = "npm start",
    args = {"start"},
    cwd = "${workspaceFolder}",
  }
}
require("dap").configurations["javascript"] = {
  {
    type = "pwa-node",
    request = "launch",
    name = "Launch file",
    program = "${file}",
    cwd = "${workspaceFolder}",
  },
  {
    type = "pwa-node",
    request = "launch",
    runtimeExecutable = "npm",
    name = "Launch npm start",
    autoAttachChildProcesses = true,
    runtimeArgs = {"run-script", "start"},
    cwd = "${workspaceFolder}",
  }
}


-- Formatter
vim.g.neoformat_typescript_prettier = {
  ['exe' ]= 'prettier',
  ['args' ]= { '--stdin-filepath' , '%' },
  ['stdin' ]= 1,
}

vim.g.neoformat_typescript_eslint = {
  ['exe' ]= 'eslint',
  ['args' ]= { '%' },
  ['stdin' ]= 0,
}

vim.g.neoformat_typescriptreact_eslint = {
  ['exe' ]= 'eslint',
  ['args' ]= { '%' },
  ['stdin' ]= 0,
}

vim.g.neoformat_typescriptreact_prettier = {
  ['exe' ]= 'prettier',
  ['args' ]= { '--stdin-filepath' , '%' },
  ['stdin' ]= 1,
}

-- vim.cmd("autocmd BufWritePre *.{ts,tsx} Neoformat")

