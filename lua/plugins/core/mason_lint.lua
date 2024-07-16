return function(activate)
  local plugin = {}

  if activate then
    plugin = {
      "rshkarin/mason-nvim-lint",
      event = "VeryLazy",
      dependencies = { "nvim-lint" },
      config = function()
        require("plugins.core.configs.mason_lint")
      end,
    }
  else
    plugin = {
      "rshkarin/mason-nvim-lint",
      enabled = false,
    }
  end

  return plugin
end
