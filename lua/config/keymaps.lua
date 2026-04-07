-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

vim.g.mapleader = ","

-- ======================
-- 你的原始键位（完整保留）
-- ======================

-- 插入模式
map("i", "kj", "<Esc>")

-- 搜索
map("n", "<leader>ss", "/")

-- 删除
map("n", "<C-k>", "D")

-- buffer 切换
for i = 1, 4 do
  map("n", "<leader>" .. i, ":" .. i .. "b<CR>")
end

-- 窗口操作
map("n", "<leader>xd", "<C-w>v")
map("n", "<leader>xa", "<C-w>s")
map("n", "<leader>x0", "<C-w>c")
map("n", "<leader>xo", "<C-w>w")

-- 折叠（原逻辑）
map("n", "<space>", function()
  if vim.fn.foldclosed(vim.fn.line(".")) < 0 then
    vim.cmd("normal! zc")
  else
    vim.cmd("normal! zo")
  end
end)

-- ======================
-- 删除 LazyVim 冲突键位（必须）
-- ======================
pcall(vim.keymap.del, "n", "<leader>ff")
pcall(vim.keymap.del, "n", "<leader>n")
pcall(vim.keymap.del, "n", "<leader>e")
