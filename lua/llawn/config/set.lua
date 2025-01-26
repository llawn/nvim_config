vim.g.mapleader = " "

-- Copy and paste settings

-- vim.api.nvim_set_option("clipboard","unnamed")

-- Cursor and line numbers

vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tab and indentation settings

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Line wrapping and undo settings

vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Search settings

vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Color and UI settings

vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Timeout and performance settings

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

-- Netrw file explorer settings

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
