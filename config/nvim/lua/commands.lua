vim.api.nvim_exec([[
command OpenConfig execute "cd ~/.dotfiles/.config/nvim/ | e init.lua"
]], false)
