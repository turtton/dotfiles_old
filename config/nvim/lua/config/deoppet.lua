vim.fn['deoppet#initialize']()

vim.fn['deoppet#custom#option']('snippets', 
	vim.fn.map(vim.fn.globpath(vim.runtimepath, 'netsnippets', 1, 1), function(_, v) return {path = v} end))

vim.api.nvim_set_keymap('i', "<C-k>", '<Plug>(deoppet_expand)', {})
vim.api.nvim_set_keymap('i', "<C-f>", '<Plug>(deoppet_jump_forward)', {})
vim.api.nvim_set_keymap('i', "<C-b>", '<Plug>(deoppet_jump_backward)', {})
vim.api.nvim_set_keymap('s', "<C-f>", '<Plug>(deoppet_jump_forward)', {})
vim.api.nvim_set_keymap('s', "<C-b>", '<Plug>(deoppet_jump_backward)', {})

