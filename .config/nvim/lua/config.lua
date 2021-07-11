require('plugins')

require('general-key-mappings')

-- settings ---

-- set theme
vim.api.nvim_exec([[
syntax enable
colorscheme dark_purple
]],false)

-- display line numbers
vim.opt.number = true
-- indents
vim.opt.expandtab = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.autoindent = true
vim.opt.smartindent = true
