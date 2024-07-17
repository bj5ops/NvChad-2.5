local __Dotenv = require "utils.dotenv"

local M = {}

-- Core activation plugins
M.treesitter = __Dotenv.env("PLUGIN_CORE_TREESITTER", "boolean")
M.lspconfig = __Dotenv.env("PLUGIN_CORE_LSPCONFIG", "boolean")
M.mason_lspconfig = __Dotenv.env("PLUGIN_CORE_MASON_LSPCONFIG", "boolean")
M.nvim_lint = __Dotenv.env("PLUGIN_CORE_LINT", "boolean")
M.mason_lint = __Dotenv.env("PLUGIN_CORE_MASON_LINT", "boolean")
M.conform = __Dotenv.env("PLUGIN_CORE_CONFORM", "boolean")
M.mason_conform = __Dotenv.env("PLUGIN_CORE_MASON_CONFORM", "boolean")
M.cmp = __Dotenv.env("PLUGIN_CORE_CMP", "boolean")
M.telescope = __Dotenv.env("PLUGIN_CORE_TELESCOPE", "boolean")
M.toggleterm = __Dotenv.env("PLUGIN_CORE_TOGGLETERM", "boolean")
M.lspsaga = __Dotenv.env("PLUGIN_CORE_LSPSAGA", "boolean")
M.gitsigns = __Dotenv.env("PLUGIN_CORE_GITSIGNS", "boolean")

-- UI activation plugins
M.nvim_tree = __Dotenv.env("PLUGIN_UI_NVIMTREE", "boolean")
M.noice = __Dotenv.env("PLUGIN_UI_NOICE", "boolean")
M.dressing = __Dotenv.env("PLUGIN_UI_DRESSING", "boolean")
M.indent_blankline = __Dotenv.env("PLUGIN_UI_INDENT_BLANKLINE", "boolean")

return M
