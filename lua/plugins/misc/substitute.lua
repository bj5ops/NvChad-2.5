return function(activate)
  local plugin = {}

  if activate then
    plugin = {
      "gbprod/substitute.nvim",
      event = { "BufReadPost", "BufNewFile" },
      config = function()
        local substitute = require "substitute"
        substitute.setup()
      end,

      keys = function()
        local map = vim.keymap.set

        -- map("n", "s", require("substitute").operator, { noremap = true })
        -- map("n", "ss", require("substitute").line, { noremap = true })
        -- map("n", "S", require("substitute").eol, { noremap = true })
        -- map("x", "s", require("substitute").visual, { noremap = true })

        map("n", "sx", require("substitute.exchange").operator, { noremap = true })
        map("n", "sxx", require("substitute.exchange").line, { noremap = true })
        map("x", "X", require("substitute.exchange").visual, { noremap = true })
        map("n", "sxc", require("substitute.exchange").cancel, { noremap = true })
      end,
    }
  end

  return plugin
end
