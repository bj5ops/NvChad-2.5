return function(activate)
  local plugin = {}

  if activate then
    plugin = {
      "szw/vim-maximizer",
      event = { "BufReadPre", "BufNewFile" },
      keys = function()
        local map = vim.keymap.set
        local __Utils = require "utils"

        map("n", "<leader>sm", __Utils.cmd "MaximizerToggle", { desc = "maximizer/minimize a split" })
      end,
    }
  end

  return plugin
end
