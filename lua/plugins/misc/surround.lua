return function(activate)
  local plugin = {}

  if activate then
    plugin = {
      "echasnovski/mini.surround",
      version = "*", -- Use for stability; omit to use `main` branch for the latest features
      event = { "BufReadPost", "BufNewFile" },
      config = function()
        require("mini.surround").setup {
          -- Configuration here, or leave empty to use defaults
        }
      end,
    }
  end

  return plugin
end
