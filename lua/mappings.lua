local map = vim.api.nvim_set_keymap

map('n', '<leader>st', ':TermSelect<CR>', { silent = true, noremap = true })
map('n', '<leader>s,', ':ToggleTermSetName<CR>', { silent = true, noremap = true })
