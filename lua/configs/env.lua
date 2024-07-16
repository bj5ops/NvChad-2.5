local __Dotenv = require "utils.dotenv"

local M = {}

M.stbufnr = function()
  return vim.api.nvim_win_get_buf(vim.g.statusline_winid or 0)
end

M.theme = __Dotenv.env("UI_THEME", "string")

M.transparency = __Dotenv.env("UI_TRANSPARENCY", "boolean")

return M
