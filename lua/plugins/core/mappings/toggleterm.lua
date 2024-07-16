local map = vim.keymap.set
local __Utils = require "utils"
local opts = { noremap = true, silent = true }

function _G.set_terminal_keymaps()
  local opts = { noremap = true }
  vim.api.nvim_buf_set_keymap(0, "t", "<esc>", [[<C-\><C-n>]], opts)
  -- vim.api.nvim_buf_set_keymap(0, "t", "jk", [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, "t", "<C-h>", [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, "t", "<C-j>", [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, "t", "<C-k>", [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, "t", "<C-l>", [[<C-\><C-n><C-W>l]], opts)
end

vim.cmd "autocmd! TermOpen term://* lua set_terminal_keymaps()"

local Terminal = require("toggleterm.terminal").Terminal

local lazygit = Terminal:new { cmd = "lazygit", hidden = true, direction = "float" }
function _LAZYGIT_TOGGLE()
  lazygit:toggle()
end

local node = Terminal:new { cmd = "node", hidden = true }
function _NODE_TOGGLE()
  node:toggle()
end

local python = Terminal:new { cmd = "python3", hidden = true }
function _PYTHON_TOGGLE()
  python:toggle()
end

local btop = Terminal:new { cmd = "btop", hidden = true, direction = "float" }
function _BTOP_TOGGLE()
  btop:toggle()
end

map("n", "<leader>tl", "<Cmd>lua _LAZYGIT_TOGGLE()<CR>", { desc = "terminal lazygit" })
map("n", "<leader>tn ", "<Cmd>lua _HTOP_TOGGLE()<CR>", { desc = "terminal node" })
map("n", "<leader>tp", "<Cmd>lua _PYTHON_TOGGLE()<CR>", { desc = "terminal python" })
map("n", "<leader>tb", "<Cmd>lua _BTOP_TOGGLE()<CR>", { desc = "terminal btop" })
-- map("i", "<C-//>", "<Cmd>exe v:count1 . 'ToggleTerm'<CR>", { desc = "terminal horizontal" })
-- map("n", "<C-//>", "<Cmd>exe v:count1 . 'ToggleTerm'<CR>", { desc = "terminal horizontal" })
map({ "n", "t" }, "<A-`>", __Utils.cmd "ToggleTerm direction=float", opts)
map({ "n", "t" }, "<leader>tt", __Utils.cmd "ToggleTerm direction=float", { desc = "terminal float", noremap = true })
map({ "n", "t" }, "<A-t>", __Utils.cmd "ToggleTerm direction=float", opts)
-- map({ "n", "t" }, "<A-h>", __Utils.cmd "ToggleTerm size=20 direction=horizontal", { desc = "terminal horizontal" })
-- map({ "n", "t" }, "<A-v>", __Utils.cmd "ToggleTerm size=80 direction=vertical", { desc = "terminal vertical" })
