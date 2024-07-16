return function(activate)
  local plugin = {}

  if activate then
    plugin = {
      "nvim-treesitter/nvim-treesitter",
      event = { "BufReadPre", "BufNewFile" },
      dependencies = {
        {
          "nvim-treesitter/nvim-treesitter-textobjects",
        },
        {
          "HiPhish/rainbow-delimiters.nvim",
          config = function()
            require("plugins.core.configs.rainbow_delimiters")
          end,
        }
      },
      config = function()
        require("plugins.core.configs.treesitter")
      end,
    }
  else
    plugin = {
      "nvim-treesitter/nvim-treesitter",
      enabled = false,
    }
  end

  return plugin
end
