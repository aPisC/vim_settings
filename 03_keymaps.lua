local keyset = vim.keymap.set
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}


-- Fzf keymaps
keyset('n', '<c-p>', ':Telescope buffers<cr>')
keyset('i', '<c-p>', '<esc>:Telescope buffers<cr>')
keyset('n', '<c-p><c-p>', ':Telescope find_files<cr>')
keyset('i', '<c-p><c-p>', '<esc>:Telescope find_files<cr>')
keyset('n', '<c-p><c-p><c-p>', ':Telescope commands<cr>')
keyset('i', '<c-p><c-p><c-p>', '<esc>:Telescope commands<cr>')

-- NERDTree keymap
keyset('n', '<c-b>', ':NERDTreeToggle <cr>')
keyset('i', '<c-b>', '<esc>:NERDTreeToggle <cr>')

-- Custom keymaps
keyset('n', '<c-s>', ':w <cr>')
keyset('i', '<c-s>', '<esc>:w <cr>')
keyset('t', '<c-w>', '<C-\\><c-n>')
keyset('', '<esc>', ':noh <cr>', {remap = true})
keyset('n', '<C-d>', '<C-d>zz')
keyset('n', '<C-u>', '<C-u>zz')
keyset('n', 'cp', 'viwpgvy')
keyset('n', 'cP', 'viWpgvy')
keyset('v', 'p', 'pgvy')

