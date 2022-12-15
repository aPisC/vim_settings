local lspconfig = require("lspconfig")

lspconfig.tsserver.setup({
  -- filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
})

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

vim.cmd("autocmd BufWritePre *.{ts,tsx} Neoformat")

