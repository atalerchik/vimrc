return {
	'tpope/vim-surround',
	'williamboman/mason-lspconfig.nvim',
	'L3MON4D3/LuaSnip',
	-- Git
	{
		'tpope/vim-fugitive',
		cmd = 'G', -- Load when the 'G' command is used
	},
	-- Visual enhancements and themes
	'xiyaowong/transparent.nvim',
	{
		'ellisonleao/gruvbox.nvim',
		config = function ()
			vim.cmd [[colorscheme gruvbox]]
		end
	},
	'folke/zen-mode.nvim',
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup {}
		end,
	},
}
