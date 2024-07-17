return function(activate)
  local plugin = {}

  if activate then
    plugin = {
      "folke/flash.nvim",
      event = "VeryLazy",
      vscode = true,
      opts = function()
        return require("plugins.ui.configs.flash")
      end,
      keys = function()
        require "plugins.ui.mappings.flash"
      end,
    }
  end

  return plugin
end
