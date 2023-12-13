return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.4',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local builtin = require('telescope.builtin')

		vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
		vim.keymap.set('n', '<C-p>', builtin.git_files, {})
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
		vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
		vim.keymap.set('n', '<leader>sr', "<CMD>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>", {})
		vim.keymap.set('n', '<leader>sR',"<CMD>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>", {})
		vim.keymap.set('n', '<leader>oqs', ':ObsidianQuickSwitch<CR>')

		local actions = require('telescope.actions')
		require('telescope').setup{
			defaults = {
				mappings = {
					i = {
						['esc'] = actions.close,
					},
				},
				file_ignore_patterns = {
					'codegen.ts',
					'.git',
					'lazy-lock.json',
					'node_modules',
					'%.lock',
					'schema.gql',
				},
				dynamic_preview_title = true,
				path_display = { 'smart' },
			},
			pickers = {
				find_files = {
					hidden = true,
				},
			},
			layout_config = {
				horizontal = {
					preview_cutoff = 100,
					preview_width = 0.5,
				},
			},
		}
	end,
}

