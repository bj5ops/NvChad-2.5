return function(activate)
  local plugin = {}

  if activate then
    plugin = {
      "yutkat/confirm-quit.nvim",
      event = "CmdlineEnter",
      opts = {},
      keys = function()
        local map = vim.keymap.set

        map("n", "<C-q>", require("confirm-quit").confirm_quit, { desc = "confirm quit" })
        map("n", "<C-Q>", require("confirm-quit").confirm_quit_all, { desc = "confirm quit all" })
      end,
    }
  end

  return plugin
end
