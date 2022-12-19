-- Configure trouble
require("trouble").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
}

-- LSP keymaps
local bufopts = { noremap=true, silent=true, buffer=bufnr }
vim.api.nvim_create_autocmd({"CursorHold"}, { pattern = {"*"}, callback=vim.lsp.buf.hover })
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
vim.keymap.set('n', '<F12>', vim.lsp.buf.definition, bufopts)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)

vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
vim.keymap.set('n', '<space>wl', function()
  print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end, bufopts)
vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
vim.keymap.set('n', '<C-.>', vim.lsp.buf.code_action, bufopts)
vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)



