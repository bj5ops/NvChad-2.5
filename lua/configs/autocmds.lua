-- vim autocmd
local autocmd = vim.api.nvim_create_autocmd

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = "*",
})

-- [[ Open Nvdash on close all buffers ]]
autocmd({ "BufEnter", "BufDelete", "FileType" }, {
  callback = function(args)
    if args.event == "FileType" then
      vim.o.showtabline = vim.bo.ft == "nvdash" and 0 or 2
      return
    end

    local buf = args.buf

    if not vim.bo[buf].buflisted then
      return
    end

    vim.schedule(function()
      if #vim.t.bufs == 1 and vim.api.nvim_buf_get_name(buf) == "" then
        require("nvchad.nvdash").open()
        require("nvchad.utils").set_cleanbuf_opts "nvdash"
      end
    end)
  end,
})