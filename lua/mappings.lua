require "nvchad.mappings"

local __Utils = require "utils"

-- add keymaps here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<C-M-m>", __Utils.cmd "Mason", { desc = "mason gui" })
map("n", "<C-M-l>", __Utils.cmd "Lazy", { desc = "lazy gui" })

-- increment/decrement numbers
map("n", "<leader>+", "<C-a>", { desc = "increment number" })
map("n", "<leader>-", "<C-x>", { desc = "decrement number" })

-- numbers
map("n", "<leader>enn", __Utils.cmd "set nu!", { desc = "editor linenumber" })
map("n", "<leader>enr", __Utils.cmd "set rnu!", { desc = "editor relative linenumber" })

-- nvimtree
map("n", "<leader>ee", __Utils.cmd "NvimTreeToggle", { desc = "nvimtree toggle file explorer" })
map("n", "<leader>ef", __Utils.cmd "NvimTreeFocus", { desc = "nvimtree focus file explorer" })
map("n", "<leader>es", __Utils.cmd "NvimTreeFindFileToggle", { desc = "nvimtree toggle file explorer on current file" })
map("n", "<leader>ec", __Utils.cmd "NvimTreeCollapse", { desc = "nvimtree collapse file explorer" })
map("n", "<leader>er", __Utils.cmd "NvimTreeRefresh", { desc = "nvimtree refresh file explorer" })

-- file formatting
map({ "n", "v" }, "<leader>cf", function()
  require("conform").format {
    lsp_fallback = true,
    async = false,
    timeout_ms = 500,
  }
end, { desc = "format file" })

-- save file
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

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
