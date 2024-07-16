return function(activate)
  local plugin = {}

  if activate then
    plugin = {
      "neovim/nvim-lspconfig",
      event = { "BufReadPre", "BufNewFile" },
      config = function()
        require("nvchad.configs.lspconfig").defaults()
        require("plugins.core.configs.lspconfig")
      end,
    }
  else
    plugin = {
      "neovim/nvim-lspconfig",
      enabled = false,
    }
  end

  return plugin
end
