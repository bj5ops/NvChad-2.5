local config = require "nvchad.configs.telescope"
local actions = require "telescope.actions"

config.defaults.path_display = { "smart" }
config.defaults.mappings = {
  i = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
    ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
    ["<C-w>"] = actions.which_key,
  },
  n = {
    ["q"] = actions.close,
  },
}
config.extensions = {
  fzf = {
    fuzzy = true,
    override_generic_sorter = true,
    override_file_sorter = true,
    case_mode = "smart_case",
  },
}

return config
