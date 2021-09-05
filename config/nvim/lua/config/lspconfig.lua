local global_setup = {
	on_attach = function (client, bufnr)
	end,
}

require'lspconfig'.pyright.setup(global_setup) 
require'lspconfig'.bashls.setup(global_setup) 
require'lspconfig'.kotlin_language_server.setup(global_setup)
require'lspconfig'.nimls.setup(global_setup)
require'lspconfig'.java_language_server.setup(global_setup)
