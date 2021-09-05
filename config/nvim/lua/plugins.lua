vim.cmd[[packadd packer.nvim]]

require('packer').startup(function()

	use{
		'wbthomason/packer.nvim', 
		opt = true,
		config = [[require('config/packer')]], 
	}

	-- theme
	use{'shapeoflambda/dark-purple.vim', opt = true}

	-- LSP関連
	use{'nvim-lua/lsp-status.nvim'}
	use{'nvim-lua/plenary.nvim'}
	use{'neovim/nvim-lspconfig'}
	use{'ray-x/lsp_signature.nvim'}
	
	-- LanguageServer
	use{
		'tjdevries/nlua.nvim',
		config = [[require('config/nlua')]],
	}
	use {'rust-lang/rust.vim'}
	-- 補完
	--use{
	--	'nvim-lua/completion-nvim',
	--	config = [[require('config/completion-nvim')]],
	--}
	--use { 'steelsojka/completion-buffers'}
	--use { 'nvim-treesitter/completion-treesitter' }

	-- Treesitter
	use{
		'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
	}

	-- 上のファイルのタブ表示
	use{
		'romgrk/barbar.nvim',
		config = [[require('config/barbar')]],
		requires = {
			{'kyazdani42/nvim-web-devicons'},
		},
	}
	
	-- FileTree
	use{
		'kyazdani42/nvim-tree.lua',
		config = [[require('config/nvim-tree')]],
		requires = {
			{'kyazdani42/nvim-web-devicons'},
		}
	}

	-- なんかMDのテーブルをいい感じに作ってくれるやつ
	use{
		'dhruvasagar/vim-table-mode',
		setup = [[vim.g.table_mode_corner = '|']],
	}

	-- markdown preview
	use{
		'iamcco/markdown-preview.nvim',
		run = [[sh -c 'cd app && yarn install']]
	}

	-- Git
	use{
		'kdheepak/lazygit.nvim',
		config = [[require'config/lazygit']]
	}	
	--use{
	--	'tanvirtin/vgit.nvim',
	--	config = [[require'config/vgit']],
	--	requires = {'nvim-lua/plenary.nvim'}
	--}

	-- fzf
	use {'junegunn/fzf'}
	use {'junegunn/fzf.vim'}
	use {'chengzeyi/fzf-preview.vim'}

	---- Deno ----
	use {'vim-denops/denops.vim'}
	-- Completion
	use {'Shougo/ddc.vim',
		config = [[require'config/ddc']], 
		requires = {
			'Shougo/ddc-nvim-lsp',
			'Shougo/ddc-around',
			'Shougo/ddc-nextword',
		}
	}
	use {
		'Shougo/deoppet.nvim',
		run = ':UpdateRemotePlugins',
		config = [[require'config/deoppet']]
	}
	-- brackets completion
	use { 'higashi000/dps-kakkonan', config = [[require'config/kakkonan']]}

	-- JapaneseInput
	use { 'kuuote/denops-skkeleton.vim', config = [[require'config/skkeleton']] }
	-- open terminal in new tab page
	use { 'lambdalisue/guise.vim' }
	-- open prompt on nvim when program ask user input through a job on nvim
	use { 'lambdalisue/askpass.vim'}
	-- handle git repository
	use { 'lambdalisue/gin.vim'}
	


end)

vim.cmd([[autocmd BufWritePost plugins.lua source <afile> | PackerCompile]])
