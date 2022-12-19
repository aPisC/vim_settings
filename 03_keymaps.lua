local keyset = vim.keymap.set
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}

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

