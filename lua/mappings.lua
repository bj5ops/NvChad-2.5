require "nvchad.mappings"

local __Utils = require "utils"

-- add keymaps here
local map = vim.keymap.set
local k = vim.keycode
local fn = __Utils.fn

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<C-M-m>", __Utils.cmd "Mason", { desc = "mason gui" })
map("n", "<C-M-l>", __Utils.cmd "Lazy", { desc = "lazy gui" })

-- Basic movement keybinds, these make navigating splits easy for me
map("n", "<c-j>", "<c-w><c-j>")
map("n", "<c-k>", "<c-w><c-k>")
map("n", "<c-l>", "<c-w><c-l>")

map("n", "<leader><leader>xl", "<cmd>.lua<CR>", { desc = "execute the current line" })
map("n", "<leader><leader>xs", "<cmd>source %<CR>", { desc = "execute the current file" })

-- Normally these are not good mappings, but I have left/right on my thumb
-- cluster, so navigating tabs is quite easy this way.
map("n", "<left>", "gT")
map("n", "<right>", "gt")

-- There are builtin keymaps for this now, but I like that it shows
-- the float when I navigate to the error - so I override them.
map("n", "]d", fn(vim.diagnostic.jump, { count = 1, float = true }))
map("n", "[d", fn(vim.diagnostic.jump, { count = -1, float = true }))

-- increment/decrement numbers
map("n", "<leader>+", "<C-a>", { desc = "increment number" })
map("n", "<leader>-", "<C-x>", { desc = "decrement number" })

-- numbers
map("n", "<leader>enn", __Utils.cmd "map nu!", { desc = "editor linenumber" })
map("n", "<leader>enr", __Utils.cmd "set rnu!", { desc = "editor relative linenumber" })

-- split window management
map("n", "<leader>sv", "<C-w>v", { desc = "split window vertically" })
map("n", "<leader>sh", "<C-w>s", { desc = "split window horizontally" })
map("n", "<leader>se", "<C-w>=", { desc = "split windows equal width" })
map("n", "<leader>sx", __Utils.cmd "close", { desc = "split window close" })

-- These mappings control the size of splits (height/width)
map("n", "<M-,>", "<c-w>5<")
map("n", "<M-.>", "<c-w>5>")
map("n", "<M-t>", "<C-W>+")
map("n", "<M-s>", "<C-W>-")

map("n", "<M-j>", function()
  if vim.opt.diff:get() then
    vim.cmd [[normal! ]c]]
  else
    vim.cmd [[m .+1<CR>==]]
  end
end)

map("n", "<M-k>", function()
  if vim.opt.diff:get() then
    vim.cmd [[normal! [c]]
  else
    vim.cmd [[m .-2<CR>==]]
  end
end)

-- bufferline
map("n", "<leader>bo", __Utils.cmd "enew", { desc = "buffer new" })
map("n", "<leader>bn", function()
  require("nvchad.tabufline").next()
end, { desc = "buffer goto next" })
map("n", "<leader>bp", function()
  require("nvchad.tabufline").prev()
end, { desc = "buffer goto prev" })
map("n", "<leader>bx", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })
map("n", "<leader>bX", function()
  require("nvchad.tabufline").closeAllBufs()
end, { desc = "buffer close all" })
map("n", "<leader>bO", function()
  require("nvchad.tabufline").closeOtherBufs()
end, { desc = "buffer close other" })

-- save file
map({ "n", "i", "v" }, "<C-s>", __Utils.cmd "w", { desc = "save file" })

-- unmap a default keymapping
local nomap = vim.keymap.del

-- numbering
nomap("n", "<leader>n")
nomap("n", "<leader>rn")

-- nvimtree
nomap("n", "<leader>e")
nomap("n", "<C-n>")

-- bufferline
nomap("n", "<leader>b")
nomap("n", "<leader>x")

-- file formatting
nomap("n", "<leader>fm")

-- nvchad term
nomap("n", "<leader>h")
nomap("n", "<leader>v")
nomap({ "n", "t" }, "<M-i>")
nomap({ "n", "t" }, "<M-h>")
nomap({ "n", "t" }, "<M-v>")
