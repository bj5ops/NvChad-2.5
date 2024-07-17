return function(activate)
  local plugin = {}

  if activate then
    plugin = {
      "nvim-tree/nvim-tree.lua",
      cmd = { "NvimTreeToggle", "NvimTreeFocus", "NvimTreeFindFileToggle", "NvimTreeRefresh", "NvimTreeCollapse" },
      config = function()
        require("plugins.ui.configs.nvim_tree")
      end,
      keys = function()
        require "plugins.ui.mappings.nvim_tree"
      end
    }
  else
    plugin = {
      "nvim-tree/nvim-tree.lua",
      enabled = false,
    }
  end

  return plugin
end
