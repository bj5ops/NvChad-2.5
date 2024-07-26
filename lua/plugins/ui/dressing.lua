return function(activate)
  local plugin = {}

  if activate then
    plugin = {
      "stevearc/dressing.nvim",
      event = "VeryLazy",
      config = function()
        local dressing = require "dressing"

        local options = {
          input = {
            enabled = true,
            default_prompt = "❯ ",
            win_options = {
              winblend = 0,
            },
            border = "single",
            -- override = function(conf)
            --   conf.col = -1
            --   conf.row = 0
            --   return conf
            -- end,
          },
          select = {
            enabled = true,
            backend = { "telescope", "builtin" },
            builtin = {
              win_options = {
                winblend = 0,
              },
            },
          },
          nui = {
            border = {
              style = "single",
            },
          },
          builtin = {
            border = "single",
          },
        }

        dressing.setup(options)
      end,
    }
  end

  return plugin
end
