require('packer').startup(function()
	-- Basic utilities
	use { 'nvim-telescope/telescope.nvim', tag = '0.1.4', requires = {'nvim-lua/plenary.nvim'} }
	use 'neovim/nvim-lspconfig'
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
	}
	use 'nvim-treesitter/nvim-treesitter-textobjects'
	use 'tpope/vim-surround'
	use 'numToStr/Comment.nvim'

	-- LSP and autocompletion
	use {'williamboman/mason.nvim', run = ':MasonUpdate'}
	use 'williamboman/mason-lspconfig.nvim'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'L3MON4D3/LuaSnip'
	use {'VonHeikemen/lsp-zero.nvim', branch = 'v2.x'}

	-- Git
	use 'tpope/vim-fugitive'
	use 'theprimeagen/harpoon'
	use 'ThePrimeagen/git-worktree.nvim'
	use 'lewis6991/gitsigns.nvim'

	-- Code formatting and databases
	use {'prettier/vim-prettier', run = 'yarn install --frozen-lockfile --production'}
	use 'tpope/vim-dadbod'
	use {
		'kristijanhusak/vim-dadbod-ui',
		requires = {
			'tpope/vim-dadbod',
			'kristijanhusak/vim-dadbod-completion',
			'haydenmeade/neotest-jest',
		},
		cmd = {'DBUI', 'DBUIToggle', 'DBUIAddConnection', 'DBUIFindBuffer'},
		ft = {'sql', 'mysql', 'plsql'},
		config = function()
			require('neotest').setup({
				adapters = {
					require('neotest-jest')({
						jestCommand = "npm test --",
						jestConfigFile = "custom.jest.config.ts",
						env = { CI = true },
						cwd = function(path)
							return vim.fn.getcwd()
						end,
					}),
				}
			})
		end
	}

	-- Tests
	use {
		"nvim-neotest/neotest",
		requires = {
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim"
		}
	}

	-- Obsidian
	use({
		"epwalsh/obsidian.nvim",
		tag = "*",  -- recommended, use latest release instead of latest commit
		requires = {
			-- Required.
			"nvim-lua/plenary.nvim",

			-- see below for full list of optional dependencies 👇
		},
		config = function()
			require("obsidian").setup({
				dir = "~/vaults/work",

				detect_cwd = false,
				log_level = vim.log.levels.DEBUG,
				daily_notes = {
					folder = "notes/daily",
					date_format = "%Y-%m-%d",
					alias_format = "%B %-d, %Y",
					template = nil
				},

				completion = {
					nvim_cmp = true,
					min_chars = 2,
					new_notes_location = "current_dir",
					prepend_note_id = true
				},

				mappings = {
					["gf"] = {
						action = function()
							return require("obsidian").util.gf_passthrough()
						end,
						opts = { noremap = false, expr = true, buffer = true },
					},
				},

				note_id_func = function(title)
					local suffix = ""
					if title ~= nil then
						suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
					else
						for _ = 1, 4 do
							suffix = suffix .. string.char(math.random(65, 90))
						end
					end
					return tostring(os.time()) .. "-" .. suffix
				end,

				disable_frontmatter = false,

				note_frontmatter_func = function(note)
					local out = { id = note.id, aliases = note.aliases, tags = note.tags }
					if note.metadata ~= nil and require("obsidian").util.table_length(note.metadata) > 0 then
						for k, v in pairs(note.metadata) do
							out[k] = v
						end
					end
					return out
				end,

				templates = {
					subdir = "meta/templates",
					date_format = "%Y-%m-%d",
					time_format = "%H:%M",
					substitutions = {}
				},

				backlinks = {
					height = 10,
					wrap = true,
				},

				follow_url_func = function(url)
					vim.fn.jobstart({"xdg-open", url})  -- linux
				end,

				use_advanced_uri = false,
				open_app_foreground = false,
				finder = "telescope.nvim",
				sort_by = "modified",
				sort_reversed = true,
				open_notes_in = "current",
				syntax = {
					enable = true,  -- set to false to disable
					chars = {
						todo = "󰄱",  -- change to "☐" if you don't have a patched font
						done = "",  -- change to "✔" if you don't have a patched font
					}
				},
				yaml_parser = "native"
			})
		end,
	})

	-- Visual enhancements and themes
	use 'xiyaowong/transparent.nvim'
	use 'ellisonleao/gruvbox.nvim'
	use 'folke/zen-mode.nvim'

	-- Tree view
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
	}
end)

--[[
--return require('packer').startup(function(use)
	-- Basic utilities
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'neovim/nvim-lspconfig'
	use 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	use 'nvim-treesitter/nvim-treesitter-textobjects'
	use 'tpope/vim-surround'
	use 'numToStr/Comment.nvim'

	-- LSP and autocompletion
	use {'williamboman/mason.nvim', run = ':MasonUpdate'}
	use 'williamboman/mason-lspconfig.nvim'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'L3MON4D3/LuaSnip'
	use {'VonHeikemen/lsp-zero.nvim', branch = 'v2.x'}

	-- Git
	use 'tpope/vim-fugitive'
	use 'theprimeagen/harpoon'
	use 'ThePrimeagen/git-worktree.nvim'
	use 'lewis6991/gitsigns.nvim'

	-- Code formatting and databases
	use {'prettier/vim-prettier', run = 'yarn install --frozen-lockfile --production'}
	use 'tpope/vim-dadbod'

	-- Visual enhancements and themes
	use 'xiyaowong/transparent.nvim'
	use {
		"epwalsh/obsidian.nvim",
		event = {
			"BufReadPre vaults/**.md",
			"BufNewFile vaults/**.md",
		},
		requires = {
			"nvim-lua/plenary.nvim",
			"godlygeek/tabular",
			"preservim/vim-markdown",
		},
		opts = {
			workspaces = {
				{
					name = "personal",
					path = "~/vaults/personal",
				},
				{
					name = "work",
					path = "~/vaults/work",
				},
			},

			-- see below for full list of options 👇
		},
	}
	use 'ellisonleao/gruvbox.nvim'
	use 'folke/zen-mode.nvim'

	use {
		"m4xshen/hardtime.nvim",
		requires = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
		opts = {}
	}
end) 
--]]

-- Load plugin configurations
require('plugins.telescope')
require('plugins.lsp')
require('plugins.masson')
require('plugins.treesittier')
require('plugins.prettier')
require('plugins.comment')
require('plugins.harpoon')
require('plugins.git-worktree')
require('plugins.nvim-tree')
