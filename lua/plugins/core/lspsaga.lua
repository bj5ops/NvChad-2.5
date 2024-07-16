return function(activate)
  local plugin = {}

  if activate then
    plugin = {
      "nvimdev/lspsaga.nvim",
      event = { "BufReadPre", "BufNewFile" },
      dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons",
      },
      config = function()
        require("plugins.core.configs.lspsaga")
      end,
      keys = function()
        require("plugins.core.mappings.lspsaga")
      end,
    }
  end

  return plugin
end
