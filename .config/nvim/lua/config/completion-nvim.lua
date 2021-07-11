require'lspconfig'.pyright.setup{on_attach=require'completion'.on_attach} 
require'lspconfig'.bashls.setup{on_attach=require'completion'.on_attach} 
require'lspconfig'.kotlin_language_server.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.nimls.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.rust_analyzer.setup{on_attach=require'completion'.on_attach}

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
