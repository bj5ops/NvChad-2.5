return function(activate)
  local plugin = {}

  if activate then
    plugin = {
      "folke/persistence.nvim",
      event = "BufReadPre", -- this will only start session saving when an actual file was opened
      opts = {
        dir = vim.fn.expand(vim.fn.stdpath "data" .. "/sessions/"), -- directory where session files are saved
        options = { "buffers", "curdir", "tabpages", "winsize" }, -- sessionoptions used for saving
        pre_save = nil, -- a function to call before saving the session
        save_empty = false, -- don't save if there are no open file buffers
      },
      keys = function()
        local map = vim.keymap.set

        map("n", "<leader>qs", function()
          require("persistence").load()
        end, { desc = "session save" })
        map("n", "<leader>ql", function()
          require("persistence").load { last = true }
        end, { desc = "session restore" })
        map("n", "<leader>qd", function()
          require("persistence").stop()
        end, { desc = "session stop" })
      end,
    }
  end

  return plugin
end
