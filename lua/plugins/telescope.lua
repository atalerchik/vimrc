require('telescope').setup{}

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>sr', "<CMD>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>", {})
vim.keymap.set('n', '<leader>sR',"<CMD>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>", {})
vim.keymap.set('n', '<leader>ot', ':ObsidianToday<CR>')
vim.keymap.set('n', '<leader>oy', ':ObsidianYesterday<CR>')
vim.keymap.set('n', '<leader>oqs', ':ObsidianQuickSwitch<CR>')
