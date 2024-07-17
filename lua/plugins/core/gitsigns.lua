return function(activate)
  local plugin = {}

  if activate then
    plugin = {
      "lewis6991/gitsigns.nvim",
      event = "User FilePost",
      config = function()
        require("plugins.core.configs.gitsigns")
      end,
    }
  else
    plugin = {
      "lewis6991/gitsigns.nvim",
      enabled = false,
    }
  end

  return plugin
end
