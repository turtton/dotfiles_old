-- fzf
vim.api.nvim_set_keymap('n', '<C-A-f>', ':FZF<CR>', { noremap = true, silent = true })
-- auto completion --
vim.api.nvim_set_keymap('i', '{', '{}<LEFT>', { noremap = true})
vim.api.nvim_set_keymap('i', '[', '[]<LEFT>', { noremap = true})
vim.api.nvim_set_keymap('i', '(', '()<LEFT>', { noremap = true})
vim.api.nvim_set_keymap('i', '"', '""<LEFT>', { noremap = true})
vim.api.nvim_set_keymap('i', "'", "''<LEFT>", { noremap = true})
-- save as superuser
vim.api.nvim_set_keymap('c', "w!!", 'w !sudo tee > /dev/null %<CR> :e!<CR>', { noremap = true, silent = true })
-- quick normal mode
vim.api.nvim_set_keymap('i', "<C-j>", '<ESC>', { noremap = true })
-- change display
vim.api.nvim_set_keymap('n', "wj", '<c-w>j', {})
vim.api.nvim_set_keymap('n', "wk", '<c-w>k', {})
vim.api.nvim_set_keymap('n', "wh", '<c-w>h', {})
vim.api.nvim_set_keymap('n', "wl", '<c-w>l', {})
