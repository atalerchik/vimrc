-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/alexey/.cache/nvim/packer_hererocks/2.1.1700008891/share/lua/5.1/?.lua;/home/alexey/.cache/nvim/packer_hererocks/2.1.1700008891/share/lua/5.1/?/init.lua;/home/alexey/.cache/nvim/packer_hererocks/2.1.1700008891/lib/luarocks/rocks-5.1/?.lua;/home/alexey/.cache/nvim/packer_hererocks/2.1.1700008891/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/alexey/.cache/nvim/packer_hererocks/2.1.1700008891/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    loaded = true,
    path = "/home/alexey/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/home/alexey/.local/share/nvim/site/pack/packer/start/FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/alexey/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/alexey/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["git-worktree.nvim"] = {
    loaded = true,
    path = "/home/alexey/.local/share/nvim/site/pack/packer/start/git-worktree.nvim",
    url = "https://github.com/ThePrimeagen/git-worktree.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/alexey/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "/home/alexey/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/home/alexey/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/alexey/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/alexey/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/alexey/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  neotest = {
    loaded = true,
    path = "/home/alexey/.local/share/nvim/site/pack/packer/start/neotest",
    url = "https://github.com/nvim-neotest/neotest"
  },
  ["neotest-jest"] = {
    loaded = true,
    path = "/home/alexey/.local/share/nvim/site/pack/packer/start/neotest-jest",
    url = "https://github.com/haydenmeade/neotest-jest"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/alexey/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/alexey/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/alexey/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/alexey/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/alexey/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/alexey/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["obsidian.nvim"] = {
    config = { "\27LJ\2\nD\0\0\3\0\4\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0D\0\1\0\19gf_passthrough\tutil\robsidian\frequireö\1\0\1\r\0\r\0*'\1\0\0\n\0\0\0X\2\15€\18\4\0\0009\2\1\0'\5\2\0'\6\3\0B\2\4\2\18\4\2\0009\2\1\2'\5\4\0'\6\0\0B\2\4\2\18\4\2\0009\2\5\2B\2\2\2\18\1\2\0X\2\15€)\2\1\0)\3\4\0)\4\1\0M\2\v€\18\6\1\0006\a\6\0009\a\a\a6\t\b\0009\t\t\t)\vA\0)\fZ\0B\t\3\0A\a\0\2&\1\a\6O\2õ\1276\2\n\0006\4\v\0009\4\f\4B\4\1\0A\2\0\2'\3\3\0\18\4\1\0&\2\4\2L\2\2\0\ttime\aos\rtostring\vrandom\tmath\tchar\vstring\nlower\18[^A-Za-z0-9-]\6-\6 \tgsub\5¼\1\0\1\t\0\n\0\0285\1\1\0009\2\0\0=\2\0\0019\2\2\0=\2\2\0019\2\3\0=\2\3\0019\2\4\0\n\2\0\0X\2\17€6\2\5\0'\4\6\0B\2\2\0029\2\a\0029\2\b\0029\4\4\0B\2\2\2)\3\0\0\1\3\2\0X\2\a€6\2\t\0009\4\4\0B\2\2\4H\5\1€<\6\5\1F\5\3\3R\5ý\127L\1\2\0\npairs\17table_length\tutil\robsidian\frequire\rmetadata\ttags\faliases\1\0\0\aid@\0\1\4\0\4\0\a6\1\0\0009\1\1\0019\1\2\0015\3\3\0>\0\2\3B\1\2\1K\0\1\0\1\2\0\0\rxdg-open\rjobstart\afn\bvimÍ\6\1\0\6\0$\0(6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0006\3\4\0009\3\5\0039\3\6\0039\3\a\3=\3\b\0025\3\t\0=\3\n\0025\3\v\0=\3\f\0025\3\18\0005\4\14\0003\5\r\0=\5\15\0045\5\16\0=\5\17\4=\4\19\3=\3\20\0023\3\21\0=\3\22\0023\3\23\0=\3\24\0025\3\25\0004\4\0\0=\4\26\3=\3\27\0025\3\28\0=\3\29\0023\3\30\0=\3\31\0025\3 \0005\4!\0=\4\"\3=\3#\2B\0\2\1K\0\1\0\vsyntax\nchars\1\0\2\tdone\bï…Š\ttodo\tó°„±\1\0\1\venable\2\20follow_url_func\0\14backlinks\1\0\2\vheight\3\n\twrap\2\14templates\18substitutions\1\0\3\16time_format\n%H:%M\vsubdir\19meta/templates\16date_format\r%Y-%m-%d\26note_frontmatter_func\0\17note_id_func\0\rmappings\agf\1\0\0\topts\1\0\3\texpr\2\vbuffer\2\fnoremap\1\vaction\1\0\0\0\15completion\1\0\4\rnvim_cmp\2\20prepend_note_id\2\23new_notes_location\16current_dir\14min_chars\3\2\16daily_notes\1\0\3\vfolder\16notes/daily\17alias_format\15%B %-d, %Y\16date_format\r%Y-%m-%d\14log_level\nDEBUG\vlevels\blog\bvim\1\0\n\24disable_frontmatter\1\18open_notes_in\fcurrent\18sort_reversed\2\fsort_by\rmodified\vfinder\19telescope.nvim\24open_app_foreground\1\21use_advanced_uri\1\15detect_cwd\1\bdir\18~/vaults/work\16yaml_parser\vnative\nsetup\robsidian\frequire\0" },
    loaded = true,
    path = "/home/alexey/.local/share/nvim/site/pack/packer/start/obsidian.nvim",
    url = "https://github.com/epwalsh/obsidian.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/alexey/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/alexey/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["transparent.nvim"] = {
    loaded = true,
    path = "/home/alexey/.local/share/nvim/site/pack/packer/start/transparent.nvim",
    url = "https://github.com/xiyaowong/transparent.nvim"
  },
  ["vim-dadbod"] = {
    loaded = true,
    path = "/home/alexey/.local/share/nvim/site/pack/packer/start/vim-dadbod",
    url = "https://github.com/tpope/vim-dadbod"
  },
  ["vim-dadbod-completion"] = {
    loaded = true,
    path = "/home/alexey/.local/share/nvim/site/pack/packer/start/vim-dadbod-completion",
    url = "https://github.com/kristijanhusak/vim-dadbod-completion"
  },
  ["vim-dadbod-ui"] = {
    commands = { "DBUI", "DBUIToggle", "DBUIAddConnection", "DBUIFindBuffer" },
    config = { "\27LJ\2\n%\0\1\3\0\3\0\0046\1\0\0009\1\1\0019\1\2\1D\1\1\0\vgetcwd\afn\bvimØ\1\1\0\b\0\v\1\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\t\0004\3\3\0006\4\0\0'\6\3\0B\4\2\0025\6\4\0005\a\5\0=\a\6\0063\a\a\0=\a\b\6B\4\2\0?\4\0\0=\3\n\2B\0\2\1K\0\1\0\radapters\1\0\0\bcwd\0\benv\1\0\1\aCI\2\1\0\2\19jestConfigFile\26custom.jest.config.ts\16jestCommand\16npm test --\17neotest-jest\nsetup\fneotest\frequire\3€€À™\4\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/alexey/.local/share/nvim/site/pack/packer/opt/vim-dadbod-ui",
    url = "https://github.com/kristijanhusak/vim-dadbod-ui"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/alexey/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-prettier"] = {
    loaded = true,
    path = "/home/alexey/.local/share/nvim/site/pack/packer/start/vim-prettier",
    url = "https://github.com/prettier/vim-prettier"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/alexey/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["zen-mode.nvim"] = {
    loaded = true,
    path = "/home/alexey/.local/share/nvim/site/pack/packer/start/zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: obsidian.nvim
time([[Config for obsidian.nvim]], true)
try_loadstring("\27LJ\2\nD\0\0\3\0\4\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0D\0\1\0\19gf_passthrough\tutil\robsidian\frequireö\1\0\1\r\0\r\0*'\1\0\0\n\0\0\0X\2\15€\18\4\0\0009\2\1\0'\5\2\0'\6\3\0B\2\4\2\18\4\2\0009\2\1\2'\5\4\0'\6\0\0B\2\4\2\18\4\2\0009\2\5\2B\2\2\2\18\1\2\0X\2\15€)\2\1\0)\3\4\0)\4\1\0M\2\v€\18\6\1\0006\a\6\0009\a\a\a6\t\b\0009\t\t\t)\vA\0)\fZ\0B\t\3\0A\a\0\2&\1\a\6O\2õ\1276\2\n\0006\4\v\0009\4\f\4B\4\1\0A\2\0\2'\3\3\0\18\4\1\0&\2\4\2L\2\2\0\ttime\aos\rtostring\vrandom\tmath\tchar\vstring\nlower\18[^A-Za-z0-9-]\6-\6 \tgsub\5¼\1\0\1\t\0\n\0\0285\1\1\0009\2\0\0=\2\0\0019\2\2\0=\2\2\0019\2\3\0=\2\3\0019\2\4\0\n\2\0\0X\2\17€6\2\5\0'\4\6\0B\2\2\0029\2\a\0029\2\b\0029\4\4\0B\2\2\2)\3\0\0\1\3\2\0X\2\a€6\2\t\0009\4\4\0B\2\2\4H\5\1€<\6\5\1F\5\3\3R\5ý\127L\1\2\0\npairs\17table_length\tutil\robsidian\frequire\rmetadata\ttags\faliases\1\0\0\aid@\0\1\4\0\4\0\a6\1\0\0009\1\1\0019\1\2\0015\3\3\0>\0\2\3B\1\2\1K\0\1\0\1\2\0\0\rxdg-open\rjobstart\afn\bvimÍ\6\1\0\6\0$\0(6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0006\3\4\0009\3\5\0039\3\6\0039\3\a\3=\3\b\0025\3\t\0=\3\n\0025\3\v\0=\3\f\0025\3\18\0005\4\14\0003\5\r\0=\5\15\0045\5\16\0=\5\17\4=\4\19\3=\3\20\0023\3\21\0=\3\22\0023\3\23\0=\3\24\0025\3\25\0004\4\0\0=\4\26\3=\3\27\0025\3\28\0=\3\29\0023\3\30\0=\3\31\0025\3 \0005\4!\0=\4\"\3=\3#\2B\0\2\1K\0\1\0\vsyntax\nchars\1\0\2\tdone\bï…Š\ttodo\tó°„±\1\0\1\venable\2\20follow_url_func\0\14backlinks\1\0\2\vheight\3\n\twrap\2\14templates\18substitutions\1\0\3\16time_format\n%H:%M\vsubdir\19meta/templates\16date_format\r%Y-%m-%d\26note_frontmatter_func\0\17note_id_func\0\rmappings\agf\1\0\0\topts\1\0\3\texpr\2\vbuffer\2\fnoremap\1\vaction\1\0\0\0\15completion\1\0\4\rnvim_cmp\2\20prepend_note_id\2\23new_notes_location\16current_dir\14min_chars\3\2\16daily_notes\1\0\3\vfolder\16notes/daily\17alias_format\15%B %-d, %Y\16date_format\r%Y-%m-%d\14log_level\nDEBUG\vlevels\blog\bvim\1\0\n\24disable_frontmatter\1\18open_notes_in\fcurrent\18sort_reversed\2\fsort_by\rmodified\vfinder\19telescope.nvim\24open_app_foreground\1\21use_advanced_uri\1\15detect_cwd\1\bdir\18~/vaults/work\16yaml_parser\vnative\nsetup\robsidian\frequire\0", "config", "obsidian.nvim")
time([[Config for obsidian.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'DBUI', function(cmdargs)
          require('packer.load')({'vim-dadbod-ui'}, { cmd = 'DBUI', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-dadbod-ui'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DBUI ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DBUIToggle', function(cmdargs)
          require('packer.load')({'vim-dadbod-ui'}, { cmd = 'DBUIToggle', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-dadbod-ui'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DBUIToggle ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DBUIAddConnection', function(cmdargs)
          require('packer.load')({'vim-dadbod-ui'}, { cmd = 'DBUIAddConnection', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-dadbod-ui'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DBUIAddConnection ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DBUIFindBuffer', function(cmdargs)
          require('packer.load')({'vim-dadbod-ui'}, { cmd = 'DBUIFindBuffer', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-dadbod-ui'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DBUIFindBuffer ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType sql ++once lua require("packer.load")({'vim-dadbod-ui'}, { ft = "sql" }, _G.packer_plugins)]]
vim.cmd [[au FileType mysql ++once lua require("packer.load")({'vim-dadbod-ui'}, { ft = "mysql" }, _G.packer_plugins)]]
vim.cmd [[au FileType plsql ++once lua require("packer.load")({'vim-dadbod-ui'}, { ft = "plsql" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
