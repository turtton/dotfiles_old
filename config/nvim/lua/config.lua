-- auto completion --
vim.api.nvim_set_keymap('i', '{', '{}<LEFT>', { noremap = true})
vim.api.nvim_set_keymap('i', '[', '[]<LEFT>', { noremap = true})
vim.api.nvim_set_keymap('i', '(', '()<LEFT>', { noremap = true})
vim.api.nvim_set_keymap('i', '"', '""<LEFT>', { noremap = true})
vim.api.nvim_set_keymap('i', "'", "''<LEFT>", { noremap = true})

-- settings ---

-- mapleader
vim.g.mapleader = " "
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
-- enable spell checking'
vim.opt.spelllang = 'en,cjk'
function _G.SpellConf()
vim.api.nvim_exec([[
redir! => syntax
silent syntax
redir END

set spell

if syntax =~? '/<comment\>'
  syntax spell default
  syntax match SpellMaybeCode /\<\h\l*[_A-Z]\h\{-}\>/ contains=@NoSpell transparent containedin=Comment contained
else
  syntax spell toplevel
  syntax match SpellMaybeCode /\<\h\l*[_A-Z]\h\{-}\>/ contains=@NoSpell transparent
endif

syntax cluster Spell add=SpellNotAscii,SpellMaybeCode

]], false)
end
vim.api.nvim_exec([[
augroup spell_check
  autocmd!
  autocmd BufReadPost,BufNewFile,Syntax * call v:lua.SpellConf()
augroup END
]], false)

-- load other files
require'plugins'
require'key-mappings'
require'commands'
