--[[Neovim Options]]--
vim.g.mapleader = " " -- space is assigned as mapleader
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true -- set to true for nerd fonts

local opt = vim.opt

opt.termguicolors = true -- enable 24 bits color in terminal
opt.showmode = false -- shows the mode
opt.tabstop = 4 -- a tab is worth 4 spaces
opt.shiftwidth = 4 -- indents are 4 spaces
opt.softtabstop = 4 -- a tab is 4 spaces in insert mode
opt.expandtab = true -- use spaces instead of tab character
opt.smartindent = true -- smart autoindent when new line!
opt.cursorline = true -- highlight the current line the cursor is on
opt.signcolumn = "yes" -- for gitsigns
opt.number = true -- allow line numbers
opt.relativenumber = true -- allow relative line numbers
opt.scrolloff = 8 -- Keep at least 8 lines above the cursor
opt.fillchars = "eob: " -- Changes the line '~' into spaces
opt.autochdir = true -- change directory to the file in current window
opt.clipboard ="unnamedplus" -- enables clipboard from registry
opt.title = true -- use the title of the current file in the buffer
opt.undofile = true -- save undofiles
opt.ignorecase = true -- case-insensitive searching unless \C or capital in the search
opt.smartcase = true
opt.splitright = true -- new splits can split right
opt.splitbelow = true -- new splits can split below
