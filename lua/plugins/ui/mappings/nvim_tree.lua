local __Utils = require "utils"
local map = vim.keymap.set

map("n", "<leader>ee", __Utils.cmd "NvimTreeToggle", { desc = "nvimtree toggle file explorer" })
map("n", "<leader>ef", __Utils.cmd "NvimTreeFocus", { desc = "nvimtree focus file explorer" })
map("n", "<leader>es", __Utils.cmd "NvimTreeFindFileToggle", { desc = "nvimtree toggle file explorer on current file" })
map("n", "<leader>ec", __Utils.cmd "NvimTreeCollapse", { desc = "nvimtree collapse file explorer" })
map("n", "<leader>er", __Utils.cmd "NvimTreeRefresh", { desc = "nvimtree refresh file explorer" })
