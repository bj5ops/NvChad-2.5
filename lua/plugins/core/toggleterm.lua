return function(activate)
  local plugin = {}

  if activate then
    plugin = {
      "akinsho/toggleterm.nvim",
      version = "*",
      event = "VeryLazy",
      dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim",
        {
          "ryanmsnyder/toggleterm-manager.nvim",
          event = "TermOpen",
          config = function()
            require "plugins.core.configs.toggleterm_manager"
          end,
        },
      },
      config = function()
        require("plugins.core.configs.toggleterm")
      end,
      keys = function()
        require("plugins.core.mappings.toggleterm")
      end,
    }
  end

  return plugin
end
