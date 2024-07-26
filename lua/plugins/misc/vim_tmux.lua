return function(activate)
  local plugin = {}

  if activate then
    plugin = {
      "christoomey/vim-tmux-navigator",
      cmd = {
        "TmuxNavigateLeft",
        "TmuxNavigateDown",
        "TmuxNavigateUp",
        "TmuxNavigateRight",
        "TmuxNavigatePrevious",
      },
      keys = function()
        local __Util = require "utils"
        local map = vim.keymap.set

        map("n", "<c-h>", __Util.cmd "<C-U>TmuxNavigateLeft", { noremap = true })
        map("n", "<c-j>", __Util.cmd "<C-U>TmuxNavigateDown", { noremap = true })
        map("n", "<c-k>", __Util.cmd "<C-U>TmuxNavigateUp", { noremap = true })
        map("n", "<c-l>", __Util.cmd "<C-U>TmuxNavigateRight", { noremap = true })
        map("n", "<c-\\>", __Util.cmd "<C-U>TmuxNavigatePrevious", { noremap = true })
      end,
    }
  end

  return plugin
end
