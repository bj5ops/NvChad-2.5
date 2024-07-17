return function(activate)
  local plugin = {}

  if activate then
    plugin = {
      "folke/noice.nvim",
      event = "VeryLazy",
      dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
        "nvim-telescope/telescope.nvim",
      },
      config = function()
        require("plugins.ui.configs.noice")
      end,
    }
  end

  return plugin
end
