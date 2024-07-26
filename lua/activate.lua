local __Dotenv = require "utils.dotenv"

local M = {}

-- Core activation plugins
M.treesitter = __Dotenv.env("PLUGIN_CORE_TREESITTER", "boolean")
M.lspconfig = __Dotenv.env("PLUGIN_CORE_LSPCONFIG", "boolean")
M.mason_lspconfig = __Dotenv.env("PLUGIN_CORE_MASON_LSPCONFIG", "boolean")
M.lint = __Dotenv.env("PLUGIN_CORE_LINT", "boolean")
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
M.flash = __Dotenv.env("PLUGIN_UI_FLASH", "boolean")
M.neoscroll = __Dotenv.env("PLUGIN_UI_NEOSCROLL", "boolean")
M.highlighturl = __Dotenv.env("PLUGIN_UI_HIGHLIGHTURL", "boolean")
M.fold = __Dotenv.env("PLUGIN_UI_FOLD", "boolean")

-- Misc activation plugins
M.editorconfig = __Dotenv.env("PLUGIN_MISC_EDITORCONFIG", "boolean")
M.case_change = __Dotenv.env("PLUGIN_MISC_CASE_CHANGE", "boolean")
M.boole = __Dotenv.env("PLUGIN_MISC_BOOLE", "boolean")
M.quit = __Dotenv.env("PLUGIN_MISC_QUIT", "boolean")
M.move = __Dotenv.env("PLUGIN_MISC_MOVE", "boolean")
M.duplicate = __Dotenv.env("PLUGIN_MISC_DUPLICATE", "boolean")
M.yanky = __Dotenv.env("PLUGIN_MISC_YANKY", "boolean")
M.visual_multi = __Dotenv.env("PLUGIN_MISC_VISUAL_MULTI", "boolean")
M.bookmarks = __Dotenv.env("PLUGIN_MISC_BOOKMARKS", "boolean")
M.silicon = __Dotenv.env("PLUGIN_MISC_SILICON", "boolean")
M.spectre = __Dotenv.env("PLUGIN_MISC_SPECTRE", "boolean")
M.rename = __Dotenv.env("PLUGIN_MISC_RENAME", "boolean")
M.comment = __Dotenv.env("PLUGIN_MISC_COMMENT", "boolean")
M.surround = __Dotenv.env("PLUGIN_MISC_SURROUND", "boolean")
M.todo_comments = __Dotenv.env("PLUGIN_MISC_TODO_COMMENTS", "boolean")
M.vim_tmux = __Dotenv.env("PLUGIN_MISC_VIM_TMUX", "boolean")
M.persistence = __Dotenv.env("PLUGIN_MISC_PERSISTENCE", "boolean")
M.illuminate = __Dotenv.env("PLUGIN_MISC_ILLUMINATE", "boolean")
M.session = __Dotenv.env("PLUGIN_MISC_SESSION", "boolean")
M.undotree = __Dotenv.env("PLUGIN_MISC_UNDOTREE", "boolean")
M.trouble = __Dotenv.env("PLUGIN_MISC_TROUBLE", "boolean")
M.maximizer = __Dotenv.env("PLUGIN_MISC_MAXIMIZER", "boolean")
M.substitute = __Dotenv.env("PLUGIN_MISC_SUBSTITUTE", "boolean")
M.goto_preview = __Dotenv.env("PLUGIN_MISC_GOTO_PREVIEW", "boolean")
M.database = __Dotenv.env("PLUGIN_MISC_DATABASE", "boolean")

return M
