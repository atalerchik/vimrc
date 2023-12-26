return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
	keys = {
			{
				"<leader>pv",
				function()
					 require("nvim-tree.api").tree.toggle{file_path = true} 
				end,
				desc = "Find Plugin File",
			}
	},
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup ({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
	})
  end,
}
