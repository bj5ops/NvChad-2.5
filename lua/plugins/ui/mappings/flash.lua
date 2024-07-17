local __Utils = require "utils"
local map = vim.keymap.set

map({ "n", "x", "o" }, "<leader>ks", function()
  require("flash").jump()
end, { desc = "flash" })

map({ "n", "x", "o" }, "<leader>kS", function()
  require("flash").treesitter()
end, { desc = "flash treesitter" })

map({ "n", "x", "o" }, "<leader>kR", function()
  require("flash").remote()
end, { desc = "flash remote" })

map({ "n", "x", "o" }, "<leader>kk", function()
  require("flash").toggle()
end, { desc = "flash toggle" })

map({ "n", "x", "o" }, "<leader>ke", function()
  require("flash").edit()
end, { desc = "edit flash" })
