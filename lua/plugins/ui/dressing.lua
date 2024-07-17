return function(activate)
  local plugin = {}

  if activate then
    plugin = {
      "stevearc/dressing.nvim",
      event = "VeryLazy",
      config = function()
        require("plugins.ui.configs.dressing")
      end,
    }
  end

  return plugin
end
