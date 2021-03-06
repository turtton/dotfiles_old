-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

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

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/watagame/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/watagame/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/watagame/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/watagame/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/watagame/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
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
  ["askpass.vim"] = {
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/askpass.vim"
  },
  ["barbar.nvim"] = {
    config = { "require('config/barbar')" },
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["crates.nvim"] = {
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/crates.nvim"
  },
  ["dark-purple.vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/opt/dark-purple.vim"
  },
  ["ddc-around"] = {
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/ddc-around"
  },
  ["ddc-nextword"] = {
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/ddc-nextword"
  },
  ["ddc-nvim-lsp"] = {
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/ddc-nvim-lsp"
  },
  ["ddc-nvim-lsp-doc"] = {
    config = { "vim.fn['ddc_nvim_lsp_doc#enable']()" },
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/ddc-nvim-lsp-doc"
  },
  ["ddc-sorter_rank"] = {
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/ddc-sorter_rank"
  },
  ["ddc.vim"] = {
    config = { "require'config/ddc'" },
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/ddc.vim"
  },
  ["denops-skkeleton.vim"] = {
    config = { "require'config/skkeleton'" },
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/denops-skkeleton.vim"
  },
  ["denops.vim"] = {
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/denops.vim"
  },
  ["deoppet.nvim"] = {
    config = { "require'config/deoppet'" },
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/deoppet.nvim"
  },
  ["dps-kakkonan"] = {
    config = { "require'config/kakkonan'" },
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/dps-kakkonan"
  },
  fzf = {
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf-preview.vim"] = {
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/fzf-preview.vim"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["gin.vim"] = {
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/gin.vim"
  },
  ["guise.vim"] = {
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/guise.vim"
  },
  ["lazygit.nvim"] = {
    config = { "require'config/lazygit'" },
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/lazygit.nvim"
  },
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/lsp-status.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim"
  },
  ["nlua.nvim"] = {
    config = { "require('config/nlua')" },
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/nlua.nvim"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/nvim-dap"
  },
  ["nvim-lspconfig"] = {
    config = { "require'config/lspconfig'" },
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "require('config/nvim-tree')" },
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    config = { "require('config/packer')" },
    loaded = false,
    needs_bufread = false,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["rust-tools.nvim"] = {
    config = { "require'rust-tools'.setup({})" },
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/rust-tools.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-table-mode"] = {
    loaded = true,
    needs_bufread = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/opt/vim-table-mode"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/watagame/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: vim-table-mode
time([[Setup for vim-table-mode]], true)
vim.g.table_mode_corner = '|'
time([[Setup for vim-table-mode]], false)
time([[packadd for vim-table-mode]], true)
vim.cmd [[packadd vim-table-mode]]
time([[packadd for vim-table-mode]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
require'config/lspconfig'
time([[Config for nvim-lspconfig]], false)
-- Config for: denops-skkeleton.vim
time([[Config for denops-skkeleton.vim]], true)
require'config/skkeleton'
time([[Config for denops-skkeleton.vim]], false)
-- Config for: barbar.nvim
time([[Config for barbar.nvim]], true)
require('config/barbar')
time([[Config for barbar.nvim]], false)
-- Config for: ddc.vim
time([[Config for ddc.vim]], true)
require'config/ddc'
time([[Config for ddc.vim]], false)
-- Config for: ddc-nvim-lsp-doc
time([[Config for ddc-nvim-lsp-doc]], true)
vim.fn['ddc_nvim_lsp_doc#enable']()
time([[Config for ddc-nvim-lsp-doc]], false)
-- Config for: nlua.nvim
time([[Config for nlua.nvim]], true)
require('config/nlua')
time([[Config for nlua.nvim]], false)
-- Config for: deoppet.nvim
time([[Config for deoppet.nvim]], true)
require'config/deoppet'
time([[Config for deoppet.nvim]], false)
-- Config for: rust-tools.nvim
time([[Config for rust-tools.nvim]], true)
require'rust-tools'.setup({})
time([[Config for rust-tools.nvim]], false)
-- Config for: dps-kakkonan
time([[Config for dps-kakkonan]], true)
require'config/kakkonan'
time([[Config for dps-kakkonan]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
require('config/nvim-tree')
time([[Config for nvim-tree.lua]], false)
-- Config for: lazygit.nvim
time([[Config for lazygit.nvim]], true)
require'config/lazygit'
time([[Config for lazygit.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
