return function(activate)
  local plugin = {}

  if activate then
    plugin = {
      "stevearc/conform.nvim",
      event = "BufWritePre",
      dependencies = {
        "rcarriga/nvim-notify",
      },
      config = function()
        require("plugins.core.configs.conform")
      end,
    }
  else
    plugin = {
      "stevearc/conform.nvim",
      enabled = false,
    }
  end

  return plugin
end
