return function(activate)
  local plugin = {}

  if activate then
    plugin = {
      "zapling/mason-conform.nvim",
      event = "VeryLazy",
      dependencies = { "conform.nvim" },
      config = function()
        require("plugins.core.configs.mason_conform")
      end,
    }
  else
    plugin = {
      "zapling/mason-conform.nvim",
      enabled = false,
    }
  end

  return plugin
end
