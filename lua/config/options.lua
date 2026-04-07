-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.mapleader = ","

vim.opt.number = true
vim.opt.wrap = true
vim.opt.encoding = "utf-8"
vim.opt.fileencodings = "utf-8,gbk"
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamed,unnamedplus"

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = false

vim.opt.foldmethod = "manual"
vim.opt.foldlevel = 3

vim.opt.updatetime = 300
vim.opt.autowrite = true
vim.opt.autoread = true