local __Dotenv = require "utils.dotenv"

local M = {}

-- Core activation plugins
M.treesitter = __Dotenv.env("PLUGIN_CORE_TREESITTER", "boolean") or true
M.lspconfig = __Dotenv.env("PLUGIN_CORE_LSPCONFIG", "boolean") or true
M.mason_lspconfig = __Dotenv.env("PLUGIN_CORE_MASON_LSPCONFIG", "boolean") or true
M.nvim_lint = __Dotenv.env("PLUGIN_CORE_LINT", "boolean") or true
M.mason_lint = __Dotenv.env("PLUGIN_CORE_MASON_LINT", "boolean") or true
M.conform = __Dotenv.env("PLUGIN_CORE_CONFORM", "boolean") or true
M.mason_conform = __Dotenv.env("PLUGIN_CORE_MASON_CONFORM", "boolean") or true
M.cmp = __Dotenv.env("PLUGIN_CORE_CMP", "boolean") or true
M.telescope = __Dotenv.env("PLUGIN_CORE_TELESCOPE", "boolean") or true
M.toggleterm = __Dotenv.env("PLUGIN_CORE_TOGGLETERM", "boolean") or true
M.lspsaga = __Dotenv.env("PLUGIN_CORE_LSPSAGA", "boolean") or true
-- M.mason = __Dotenv.env("PLUGIN_CORE_MASON", "boolean") or true
-- M.gitsigns = __Dotenv.env("PLUGIN_CORE_GITSIGNS", "boolean") or true
-- M.which_key = __Dotenv.env("PLUGIN_CORE_WHICH_KEY", "boolean") or true

return M
