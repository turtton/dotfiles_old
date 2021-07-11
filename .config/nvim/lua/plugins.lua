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
	
	-- LanguageServer
	use{
		'tjdevries/nlua.nvim',
		config = [[require('config/nlua')]],
	}

	-- 補完
	use{
		'nvim-lua/completion-nvim',
		config = [[require('config/completion-nvim')]],
	}
	use { 'steelsojka/completion-buffers' }

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
		requires = {
			{'kyazdani42/nvim-web-devicons'},
		}
	}

	-- なんかMDのテーブルをいい感じに作ってくれるやつ
	use{
		'dhruvasagar/vim-table-mode',
		setup = [[vim.g.table_mode_corner = '|']],
	}
	
	-- fzf
	use {'junegunn/fzf'}
	use {'junegunn/fzf.vim'}
	use {'chengzeyi/fzf-preview.vim'}

end)

vim.cmd([[autocmd BufWritePost plugins.lua source <afile> | PackerCompile]])
