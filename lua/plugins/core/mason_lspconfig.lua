return function(activate)
  local plugin

  if activate then
    plugin = {
      "williamboman/mason-lspconfig.nvim",
      event = "VeryLazy",
      dependencies = { "nvim-lspconfig" },
      config = function()
        require("plugins.core.configs.mason_lspconfig")
      end,
    }
  else
    plugin = {
      "williamboman/mason-lspconfig.nvim",
      enabled = false,
    }
  end

  return plugin
end
