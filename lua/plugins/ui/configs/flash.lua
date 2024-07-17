local options = {
  jump = { nohlsearch = true },
  prompt = {
    -- Place the prompt above the statusline.
    win_config = { row = -3 },
  },
  search = {
    exclude = {
      "cmp_menu",
      "flash_prompt",
      "qf",
      function(win)
        -- Floating windows from bqf.
        if vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(win)):match "BqfPreview" then
          return true
        end

        -- Non-focusable windows.
        return not vim.api.nvim_win_get_config(win).focusable
      end,
    },
  }
}

return options
