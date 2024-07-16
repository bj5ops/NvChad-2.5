return function(activate)
  local plugin = {}

  if activate then
    plugin = {
      "mfussenegger/nvim-lint",
      event = { "BufReadPre", "BufNewFile" },
      config = function()
        require("plugins.core.configs.lint")
      end,
    }
  else
    plugin = {
      "mfussenegger/nvim-lint",
      enabled = false,
    }
  end

  return plugin
end
