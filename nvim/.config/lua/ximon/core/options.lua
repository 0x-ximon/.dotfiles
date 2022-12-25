local opt = vim.opt

-- Line Numbers
opt.relativenumber = true
opt.number = true

-- Tabs & Indention
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- Line Wrapping
opt.wrap = false

-- Search Settings
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

-- Cursor line
opt.cursorline = true

-- Appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Backspace
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard = "unnamedplus"

-- Split Windows
opt.splitright = true
opt.splitbelow = true

-- Backup Files
opt.swapfile = false
