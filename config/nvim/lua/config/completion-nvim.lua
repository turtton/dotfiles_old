local chain_complete_list = {
	default = {
		{ complete_items = { 'lsp' } },
		{ complete_items = { 'buffers' } },
		{ complete_items = { 'path'}, triggered_only = { '/' }},
		{ mode = { '<c-p>' } },
		{ mode = { '<c-n>' } }
	},
	string = {
		{ complete_items = { 'path'}, triggered_only = { '/' }},
	},
	comment = {},
}

local global_setup = {
	on_attach = function (client, bufnr)
		require'completion'.on_attach({
			sorting = 'alphabet',
			matching_strategy_list = {'exact', 'fuzzy'},
			chain_complete_list = chain_complete_list, 
		})
		require'lsp_signature'.on_attach({
			blind = true,
			handler_opts = {
				border = "single"
			}
		})
	end,
}

require'lspconfig'.pyright.setup(global_setup) 
require'lspconfig'.bashls.setup(global_setup) 
require'lspconfig'.kotlin_language_server.setup(global_setup)
require'lspconfig'.nimls.setup(global_setup)
require'lspconfig'.rust_analyzer.setup(global_setup)
require'lspconfig'.java_language_server.setup(global_setup)

vim.api.nvim_exec(
[[
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c
]],false)
