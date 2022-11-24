local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
  --    Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'vim-airline/vim-airline'
  Plug 'tpope/vim-surround'
  Plug('junegunn/fzf', {['do'] = vim.fn['fzf#install']})
  Plug 'junegunn/fzf.vim'
  Plug 'michaeljsmith/vim-indent-object'

  -- Plug('neoclide/coc.nvim', {['branch']= 'release'})
  Plug 'puremourning/vimspector'
  Plug 'neovim/nvim-lspconfig'
  Plug 'ray-x/lsp_signature.nvim'
  Plug 'Decodetalkers/csharpls-extended-lsp.nvim'

  Plug 'junegunn/goyo.vim'
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/vim-devicons'

  Plug 'ghifarit53/tokyonight-vim'
vim.call('plug#end')

-- Theme configuration 
vim.cmd('let g:tokyonight_style = "night"')
vim.cmd('let g:tokyonight_enable_italic = 0')
vim.cmd('let g:tokyonight_transparent_background = 1')
vim.cmd('let g:airline_theme = "tokyonight"')
vim.cmd('set termguicolors')
vim.cmd('colorscheme tokyonight')
vim.cmd('hi LineNr guibg=#232433')

-- Vim options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2 
vim.opt.expandtab = true
vim.opt.wrap = false

-- Mappings.
local keyset = vim.keymap.set
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}

-- Coc keymaps
-- keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)
-- keyset("i", "<esc>", [[coc#pum#visible() ? coc#pum#cancel() : "\<esc>" ]], opts)
-- keyset("i", "<c-space>", "coc#refresh()", {silent = true, expr = true})
-- keyset("n", "<c-space>", "<Plug>(coc-codeaction-selected)l", {silent = true})
-- keyset("n", "gd", "<Plug>(coc-definition)", {silent = true})
-- keyset("n", "gy", "<Plug>(coc-type-definition)", {silent = true})
-- keyset("n", "gi", "<Plug>(coc-implementation)", {silent = true})
-- keyset("n", "gr", "<Plug>(coc-references)", {silent = true})
-- keyset('n', '<C-p>', ':Files<CR>')
-- keyset('i', '<C-p>', '<Esc>:Files<CR>')
-- keyset('n', '<C-p><C-p>', ':Commands<CR>')
-- keyset('i', '<C-p><C-p>', '<Esc>:Commands<CR>')

-- Fzf keymaps
keyset('n', '<c-p>', ':Files<cr>')
keyset('i', '<c-p>', '<esc>:Files<cr>')
keyset('n', '<c-p><c-p>', ':Commands<cr>')
keyset('i', '<c-p><c-p>', '<esc>:Commands<cr>')

-- NERDTree keymap
keyset('n', '<c-b>', ':NERDTreeToggle <cr>')
keyset('i', '<c-b>', '<esc>:NERDTreeToggle <cr>')

-- Custom keymaps
keyset('n', '<c-s>', ':w <cr>')
keyset('i', '<c-s>', '<esc>:w <cr>')
keyset('t', '<c-w>', '<C-\\><c-n>')
keyset('', '<esc>', ':noh <cr>', {remap = true})

-- -- See `:help vim.diagnostic.*` for documentation on any of the below functions
-- local opts = { noremap=true, silent=true }
-- vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
-- vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
-- vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
-- vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

-- -- Use an on_attach function to only map the following keys
-- -- after the language server attaches to the current buffer
-- local bufopts = { noremap=true, silent=true, buffer=bufnr }
-- local signature_setup = {
--   bind = true, -- This is mandatory, otherwise border config won't get registered.
--   handler_opts = {
--     border = "rounded"
--   }
-- }

-- local on_attach = function(client, bufnr)
--   -- Enable completion triggered by <c-x><c-o>
--   vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

--   -- Init LSP Signature
--   require "lsp_signature".on_attach(signature_setup, bufnr)

--   -- Mappings.
--   -- See `:help vim.lsp.*` for documentation on any of the below functions
--   local bufopts = { noremap=true, silent=true, buffer=bufnr }
--   vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
--   -- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
--   vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
--   -- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
--   vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
--   vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
--   vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
--   vim.keymap.set('n', '<space>wl', function()
--     print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
--   end, bufopts)
--   vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
--   vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
--   vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
--   vim.keymap.set('n', '<c-space>', vim.lsp.buf.code_action, bufopts)
--   vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
--   vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
--   vim.keymap.set('i', '<c-space>', vim.lsp.buf.completion, bufopts)
-- end

-- require('lspconfig')['csharp_ls'].setup{
--   handlers = {
--     ["textDocument/definition"] = require('csharpls_extended').handler,
--   },
--   on_attach = on_attach,
-- }
