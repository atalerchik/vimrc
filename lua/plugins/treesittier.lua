return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {'nvim-treesitter/nvim-treesitter-textobjects'},
	build = ":TSUpdate",
	config = function()
		require'nvim-treesitter.configs'.setup {
			-- A list of parser names, or "all" (the five listed parsers should always be installed)
			ensure_installed = {"lua", "vim", "vimdoc", "query", "javascript", "typescript", "json", "yaml", "markdown","markdown_inline", "rust", "toml", "regex", "html", "css", "graphql"},
			ignore_install = { "" }, -- List of parsers to ignore installing

			-- Install parsers synchronously (only applied to `ensure_installed`)
			sync_install = false,

			highlight = {
				enable = true,
				additional_vim_regex_highlighting = { "markdown" },
			},
			indent = { enable = true },
			autotag = { enable = true },
		}
	end,
	event = "BufRead",  -- Load nvim-treesitter on buffer read
	ft = { "lua", "vim", "vimdoc", "query", "javascript", "typescript", "json", "yaml", "markdown", "markdown_inline", "toml", "rust" }, -- File types
}
