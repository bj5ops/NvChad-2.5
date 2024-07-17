return function(active)
  local plugin = {}

  if active then
    plugin = {
      "lukas-reineke/indent-blankline.nvim",
      main = "ibl",
      commit = "29be0919b91fb59eca9e90690d76014233392bef",
      event = "User FilePost",
      dependencies = { "HiPhish/rainbow-delimiters.nvim" },
      opts = function()
        return require("plugins.ui.configs.indent_blankline")
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
