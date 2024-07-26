return function(active)
  local plugin = {}

  if active then
    plugin = {
      "lukas-reineke/indent-blankline.nvim",
      main = "ibl",
      commit = "65e20ab94a26d0e14acac5049b8641336819dfc7",
      event = "User FilePost",
      dependencies = { "HiPhish/rainbow-delimiters.nvim" },
      opts = function()
        local highlight = {
          "RainbowRed",
          "RainbowYellow",
          "RainbowBlue",
          "RainbowOrange",
          "RainbowGreen",
          "RainbowViolet",
          "RainbowCyan",
        }

        local hooks = require "ibl.hooks"
        hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
          vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
          vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
          vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
          vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
          vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
          vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
          vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
        end)

        vim.g.rainbow_delimiters = { highlight = highlight }
        hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
        return {
          indent = { char = "┊" },
          scope = { char = "┊", highlight = highlight },
        }
      end,
    }
  else
    plugin = {
      "lukas-reineke/indent-blankline.nvim",
      enabled = false,
    }
  end

  return plugin
end
