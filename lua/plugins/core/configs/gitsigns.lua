dofile(vim.g.base46_cache .. "git")

local options = {
  signs = {
    add = { text = "│" },
    change = { text = "│" },
    delete = { text = "󰍵" },
    topdelete = { text = "‾" },
    changedelete = { text = "~" },
    untracked = { text = "│" },
  },

  current_line_blame = true,

  on_attach = function(bufnr)
    require "plugins.core.mappings.gitsigns" (bufnr)
  end,
}

require("gitsigns").setup(options)
