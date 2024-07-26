return function(activate)
  local plugin = {}

  if activate then
    plugin = {
      "itchyny/vim-highlighturl",
      event = "BufReadPost",
      config = function()
        -- Disable the plugin in some places where the default highlighting
        -- is preferred.
        vim.api.nvim_create_autocmd("FileType", {
          desc = "Disable URL highlights",
          pattern = {
            "fzf",
            "lazyterm",
            "nvterm",
            "spectre_panel",
          },
          command = "call highlighturl#disable_local()",
        })
      end,
    }
  end

  return plugin
end
