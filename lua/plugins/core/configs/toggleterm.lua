local options = {
  size = 20,
  open_mapping = [[<c-\>]],
  hide_numbers = true,
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 2,
  start_in_insert = true,
  insert_mappings = true,
  persist_size = true,
  direction = "float",
  close_on_exit = true,
  shell = vim.o.shell,
  float_opts = {
    border = "single",
    winblend = 0,
    highlights = {
      border = "#16A085",
      background = "Normal",
    },
    FloatBorder = {
      guifg = "#16A085",
      -- guibg = "#16A085",
    },
  },
}

require("toggleterm").setup(options)
