require "nvchad.options"

local o = vim.o
local opt = vim.opt

vim.scriptencoding = "utf-8"
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

-- Indenting
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4
o.smartindent = true
o.wrap = false
o.swapfile = false
o.mouse = ""
o.path = "**"
o.splitbelow = true
o.splitright = true
o.splitkeep = "cursor"
o.formatoptions = "r"
o.undofile = true
o.termguicolors = true
o.number = true
o.relativenumber = true
o.wrap = false
o.autoindent = true
o.smartindent = true
o.writebackup = false
o.backup = false
o.expandtab = true
o.completeopt = "menuone,noinsert,noselect"
o.inccommand = "split"
o.ignorecase = true
o.smarttab = true
o.breakindent = true

-- Numbers
o.number = true
o.relativenumber = true

-- search
o.ignorecase = true
o.smartcase = true
o.hlsearch = true
o.incsearch = true

-- o.cursorlineopt ='both' -- to enable cursorline!

-- Misc
opt.cmdheight = 0
opt.wildignore:append {
  "*.o",
  "*.obj,*~",
  "*.git*",
  "*.meteor*",
  "*vim/backups*",
  "*sass-cache*",
  "*mypy_cache*",
  "*__pycache__*",
  "*cache*",
  "*logs*",
  "*node_modules*",
  "**/node_modules/**",
  "*DS_Store*",
  "*.gem",
  "log/**",
  "tmp/**",
  "*package-lock.json*",
  "**/dist/**",
  "**/.next/**",
  "**/.nx/**",
  "*vendor*",
  "**/vendor/**",
}
