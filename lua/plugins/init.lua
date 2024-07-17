-- Activate plugins
local activate = require "activate"

return {
  -- core plugins
  require "plugins.core.treesitter" (activate.treesitter),
  require "plugins.core.lspconfig" (activate.lspconfig),
  require "plugins.core.mason_lspconfig" (activate.mason_lspconfig),
  require "plugins.core.nvim_lint" (activate.nvim_lint),
  require "plugins.core.mason_lint" (activate.mason_lint),
  require "plugins.core.conform" (activate.conform),
  require "plugins.core.mason_conform" (activate.mason_conform),
  require "plugins.core.cmp" (activate.cmp),
  require "plugins.core.telescope" (activate.telescope),
  require "plugins.core.toggleterm" (activate.toggleterm),
  require "plugins.core.lspsaga" (activate.lspsaga),
  require "plugins.core.gitsigns" (activate.gitsigns),

  -- ui plugins
  require "plugins.ui.nvim_tree" (activate.nvim_tree),
  require "plugins.ui.noice" (activate.noice),
  require "plugins.ui.dressing" (activate.dressing),
  require "plugins.ui.indent_blankline" (activate.indent_blankline),
}
