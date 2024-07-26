-- Credits to original https://github.com/arcticicestudio/nord-vim
-- This is modified version of it

local M = {}

M.base_30 = {
  white = "#E7ECEE",
  darker_black = "#192124",
  black = "#1B2224", --  nvim bg
  black2 = "#222d31",
  one_bg = "#2A373C",
  one_bg2 = "#324248",
  one_bg3 = "#4b646c",
  grey = "#4b515d",
  grey_fg = "#565c68",
  grey_fg2 = "#606672",
  light_grey = "#646a76",
  red = "#BF616A",
  baby_pink = "#de878f",
  pink = "#d57780",
  line = "#2A373C", -- for lines like vertsplit
  green = "#A3BE8C",
  vibrant_green = "#afca98",
  blue = "#16A085",
  nord_blue = "#81A1C1",
  yellow = "#EBCB8B",
  sun = "#e1c181",
  purple = "#B48EAD",
  dark_purple = "#a983a2",
  teal = "#6484a4",
  orange = "#e39a83",
  cyan = "#9aafe6",
  statusline_bg = "#1B2224",
  lightbg = "#2A373C",
  pmenu_bg = "#A3BE8C",
  folder_bg = "#8FBCBB",
  logo_fg = "#16A085",
}

M.base_16 = {
  base00 = "#1B2224",
  base01 = "#222D31",
  base02 = "#2A373C",
  base03 = "#324248",
  base04 = "#D8DEE9",
  base05 = "#E5E9F0",
  base06 = "#ECEFF4",
  base07 = "#8FBCBB",
  base08 = "#88C0D0",
  base09 = "#81A1C1",
  base0A = "#88C0D0",
  base0B = "#A3BE8C",
  base0C = "#81A1C1",
  base0D = "#81A1C1",
  base0E = "#81A1C1",
  base0F = "#B48EAD",
}

M.type = "dark"

M = require("base46").override_theme(M, "manjaro-sway")

return M
