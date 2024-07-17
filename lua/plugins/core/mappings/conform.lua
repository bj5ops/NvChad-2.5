-- local __Utils = require "utils"
local map = vim.keymap.set

map({ "n", "v" }, "<leader>cf", function()
  require("conform").format {
    lsp_fallback = true,
    async = false,
    timeout_ms = 500,
  }
end, { desc = "format file" })
