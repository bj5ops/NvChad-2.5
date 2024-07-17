-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

local hl = require "configs.hl"
local icons = require "configs.icons"
local env = require "configs.env"

---@type ChadrcConfig
local M = {}

M.ui = {
  hl_add = hl.add,
  hl_override = hl.override,
  theme = env.theme,
  transparency = env.transparency,

  cmp = {
    icons = true,
    lspkind_text = true,
    style = "atom_colored", -- default/flat_light/flat_dark/atom/atom_colored
  },

  nvdash = {
    load_on_startup = true,
    header = {
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
    },
  },

  statusline = {
    theme = "default",
    separator_style = "arrow",
    order = {
      "mode",
      "relativepath",
      "file",
      "git",
      "%=",
      "lsp_msg",
      "%=",
      "package",
      "ai",
      "spaces",
      "diagnostics",
      "lsp",
      "cwd",
      "cursor",
    },
    modules = {
      git = function()
        if not vim.b[env.stbufnr()].gitsigns_head or vim.b[env.stbufnr()].gitsigns_git_status then
          return ""
        end

        local git_status = vim.b[env.stbufnr()].gitsigns_status_dict

        local added = (git_status.added and git_status.added ~= 0) and ("%#St_lspInfo#  " .. git_status.added) or ""
        local changed = (git_status.changed and git_status.changed ~= 0) and ("%#St_lspWarning#  " .. git_status.changed) or ""
        local removed = (git_status.removed and git_status.removed ~= 0) and ("%#St_lspError#  " .. git_status.removed) or ""
        local branch_name = "%#StText# " .. git_status.head

        return " " .. branch_name .. added .. changed .. removed
      end,

      relativepath = function()
        local path = vim.api.nvim_buf_get_name(env.stbufnr())

        if path == "" then
          return ""
        end

        return "%#St_file# " .. vim.fn.expand "%:.:h" .. " /"
      end,

      package = function()
        local lazy_status = require "lazy.status"
        local hl = "%#St_lspInfo#"
        local icon = ""

        if lazy_status.has_updates() then
          icon = hl .. lazy_status.updates()
        end

        return icon .. " "
      end,

      spaces = function()
        return " " .. icons.ui.Tab .. " " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
      end,

      ai = function()
        local hl = "%#St_lspInfo#"
        local icon = "" -- 󱜙  󰘦

        local status_ok, codeium = pcall(require, "codeium")
        if status_ok then
          icon = hl .. icons.misc.Robot .. " "
        end

        return icon
      end,
    },
  },
}

return M
