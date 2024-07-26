return function(activate)
  local plugin = {}

  if activate then
    plugin = {
      "nvim-pack/nvim-spectre",
      event = "VeryLazy",
      config = function()
        require("spectre").setup {
          result_padding = "",
          default = {
            replace = {
              cmd = "sed",
            },
          },
        }
      end,
      keys = function()
        local __Utils = require "utils"
        local map = vim.keymap.set

        map("n", "<leader>S", __Utils.cmd "lua require('spectre').toggle()", { desc = "search toggle" })
        map(
          "n",
          "<leader>sw",
          __Utils.cmd "lua require('spectre').open_visual({select_word=true})",
          { desc = "search current word" }
        )
        map("v", "<leader>sw", __Utils.cmd "lua require('spectre').open_visual()", { desc = "search current word" })
        map(
          "n",
          "<leader>sf",
          __Utils.cmd "lua require('spectre').open_file_search({select_word=true})",
          { desc = "search on current file" }
        )
      end,
    }
  end

  return plugin
end
