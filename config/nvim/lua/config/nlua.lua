local custom_attach = function()
	--require('completion').on_attach()
end

require('nlua.lsp.nvim').setup(require('lspconfig'), {
	--on_attach = custom_attach,
	globals = {
		"Color", "c", "Group", "g", "s",
	}
})

