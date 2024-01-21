-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local keymap = vim.keymap.set

keymap("x", "<leader>p", '"_dP', { desc = "Replace without yanking" })
keymap("n", "<leader>d", '"_d', { desc = "Delete without yanking" }) -- e.g <leader>dd deletes the current line without yanking it
keymap("n", "<leader>D", '"_D', { desc = "Delete until EOL without yanking" })
keymap("n", "<leader>h", '"_c', { desc = "Change without yanking" })
keymap("n", "<leader>C", '"_C', { desc = "Change until EOL without yanking" })
