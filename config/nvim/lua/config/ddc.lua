--" Customize global settings
--" Use around source.
--" https://github.com/Shougo/ddc-around
vim.fn['ddc#custom#patch_global']('sources', {'nvimlsp', 'around', 'nextword', 'deoppet'})
--" Use matcher_head and sorter_rank.
--" https://github.com/Shougo/ddc-matcher_head
--" https://github.com/Shougo/ddc-sorter_rank
vim.fn['ddc#custom#patch_global']('sourceOptions', {
	_ = {
		nvimlsp = {mark = 'lsp', forceCompletionPattern = [[.|:|->]] },
		 around =  { matchers = {'matcher_head'}, mark = 'A'},
		nextword = { mark = 'nextword', minAutoCompleteLength = 3, isVolatile = true},
		deoppet = { dup = true, mark = 'dp'}
	}
})
--" Change source options
vim.fn['ddc#custom#patch_global']('sourceOptions', {
       nvimlsp = { kindLabels = { Class = 'c' } },
			 around = { maxSize = 500},
      })

-- Mappings
vim.api.nvim_set_keymap('i', '<TAB>',
	[[pumvisible() ? '<C-n>' : (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?'<TAB>' : ddc#manual_complete()]],
	{ noremap = true, silent = true, expr = true}
)
vim.api.nvim_set_keymap('i', '<S-TAB>', [[pumvisible() ? '<C-p>' : '<C-h>']], { noremap = true, expr = true })

--" Use ddc.
vim.fn['ddc#enable']()
