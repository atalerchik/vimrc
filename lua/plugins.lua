local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local lazy = require('lazy')

lazy.setup({
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.4', dependencies = { 'nvim-lua/plenary.nvim' },
		config = function() require('plugins.telescope') end,
	},
	{
		'neovim/nvim-lspconfig',
		event = 'BufReadPre',
		config = function() require('plugins.lsp') end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function() require('plugins.treesittier') end,
	},
	"nvim-treesitter/nvim-treesitter-textobjects",
	'tpope/vim-surround',
	{
		'numToStr/Comment.nvim',
		lazy = false,
		config = function() require('plugins.comment') end,
	},

	-- LSP and autocompletion
	{
		"williamboman/mason.nvim",
		config = function() require('plugins.masson') end,
	},
	'williamboman/mason-lspconfig.nvim',
	'hrsh7th/nvim-cmp',
	'hrsh7th/cmp-nvim-lsp',
	'L3MON4D3/LuaSnip',
	{'VonHeikemen/lsp-zero.nvim', branch = 'v2.x'},

	-- Git
	{
		'tpope/vim-fugitive',
		cmd = 'G', -- Load when the 'G' command is used
	},
	{ 'theprimeagen/harpoon', config = function() require('plugins.harpoon') end },
	{
		'ThePrimeagen/git-worktree.nvim',
		config = function() require('plugins.git-worktree') end 
	},

	'lewis6991/gitsigns.nvim',

	-- Code formatting and databases
	{
		'prettier/vim-prettier',
		build = 'yarn install --frozen-lockfile --production',
		config = function() require('plugins.prettier') end
	},


	-- Obsidian
	{
    "epwalsh/obsidian.nvim",
    version = "*",  -- Use the latest release
    dependencies = {
      "nvim-lua/plenary.nvim",  -- Required dependency
      -- Add any optional dependencies if needed
    },
	config = function ()
		require('plugins.obsidian-nvim')
	end,
  },

	-- Visual enhancements and themes
	'xiyaowong/transparent.nvim',
	'ellisonleao/gruvbox.nvim',
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
  {
    'glacambre/firenvim',

    -- Lazy load firenvim
    -- Explanation: https://github.com/folke/lazy.nvim/discussions/463#discussioncomment-4819297
    lazy = not vim.g.started_by_firenvim,
    build = function()
        vim.fn["firenvim#install"](0)
    end
  },
});
