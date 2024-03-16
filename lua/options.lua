--[[Neovim Options]]--
vim.g.mapleader = " " -- space is assigned as mapleader

local opt = vim.opt

opt.termguicolors = true -- enable 24 bits color in terminal
opt.showmode = true -- shows the mode
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
