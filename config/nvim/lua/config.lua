require'plugins'
require'key-mappings'
require'commands'

-- auto completion --
vim.api.nvim_set_keymap('i', '{', '{}<LEFT>', { noremap = true})
vim.api.nvim_set_keymap('i', '[', '[]<LEFT>', { noremap = true})
vim.api.nvim_set_keymap('i', '(', '()<LEFT>', { noremap = true})
vim.api.nvim_set_keymap('i', '"', '""<LEFT>', { noremap = true})
vim.api.nvim_set_keymap('i', "'", "''<LEFT>", { noremap = true})

-- settings ---
--
-- enable reload
vim.opt.autoread = true
-- prevent creating swapfile and backupfile
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false

-- set theme
vim.api.nvim_exec([[
syntax enable
colorscheme dark_purple
]],false)

-- display
-- line numbers
vim.opt.number = true
-- title
vim.opt.title = true
-- ruler
vim.opt.ruler = true
-- tabs and line
vim.opt.list = false
-- highlight ()
vim.opt.showmatch = true

-- allow mouse
vim.opt.mouse = ''

-- indents
vim.opt.expandtab = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.autoindent = true
vim.opt.smartindent = true
-- bind clipboard
vim.opt.clipboard = 'unnamedplus'