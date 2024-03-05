vim.o.termguicolors = true
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

require("lazy").setup("plugins")
require("plugin_config.neoconf_config")
require("plugin_config.lsp_config")
require("plugin_config.nvim_cmp_config")
require("plugin_config.trouble_config")
require("plugin_config.telescope_config")
require("plugin_config.copilot_config")
require("plugin_config.gitsigns_config")
require("plugin_config.nvim_web_devicons_config")
require("plugin_config.octo_config")
require("plugin_config.treesitter_config")
require("plugin_config.vimtex_config")
require("plugin_config.silicon_config")
require("plugin_config.jsonpath_config")
require("plugin_config.lualine_config")
require("plugin_config.lspsignature_config")
require("plugin_config.none_ls_config")
require("personal_config.editor_preferences")
require("personal_config.theme")

