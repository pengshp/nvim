-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = vim.keymap.set
map("n", "C", '"_C', { noremap = true, desc = "Change without yank." })
map("n", "D", '"_D', { noremap = true, desc = "Delete without yank." })
map("n", "c", '"_c', { desc = "Pure key c" })
-- map("x",'<leader>p','"_dP',{desc = 'Paset but do not replace register '})
