vim.g.mapleader = " "


-- quickfix items
vim.keymap.set('n', '<leader>h', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<leader>;', '<cmd>cprev<CR>zz')

vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')

-- Open netrw explorer
vim.keymap.set("n", "<leader>pv", '<cmd>NvimTreeOpen<CR>')

-- move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- center screen 
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- safe past from buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- copy in system registry
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- safe delete
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "<leader>,", ":noh<CR>")


vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Map 'jk' to <esc> in insert mode
vim.api.nvim_set_keymap('i', 'jk', '<esc>', {})

-- Run tests
vim.api.nvim_set_keymap("n", "<leader>tw", "<cmd>lua require('neotest').run.run({ jestCommand = 'jest --watch ' })<cr>", {})

-- Obsidian 
vim.keymap.set('n', '<leader>ot', ':ObsidianToday<CR>')
vim.keymap.set('n', '<leader>obl', ':ObsidianBacklinks<CR>')

-- Maker dir for this file
vim.keymap.set('n', '<leader>md', ':!mkdir -p %:h<CR>', { noremap = true, silent = true })

-- Add javascript console loge for current word or section
vim.keymap.set('n', '<leader>cl', 'yiwoconsole.log("", <C-r>o);<ESC>', { noremap = true, silent = true })
vim.keymap.set('v', '<leader>cl', 'yOconsole.log("", <C-r>"");<ESC>', { noremap = true, silent = true })

vim.keymap.set('v', '<leader>wf', 'Sfunction () {<CR><C-r>"<CR>}<ESC>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>zz', ':ZenMode<cr>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>ex', ':NvimTreeOpen<cr>', { noremap = true, silent = true })
