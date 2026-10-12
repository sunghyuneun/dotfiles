-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Stage the current buffer/file
vim.keymap.set("n", "<leader>ga", function()
  require("gitsigns").stage_buffer()
end, { desc = "Stage current file" })

-- Unstage the current buffer/file
vim.keymap.set("n", "<leader>gA", function()
  require("gitsigns").reset_buffer_index()
end, { desc = "Unstage current file" })

-- Move around in insert mode using Ctrl + hjkl
vim.keymap.set("i", "<C-h>", "<Left>", { desc = "Move left" })
vim.keymap.set("i", "<C-j>", "<Down>", { desc = "Move down" })
vim.keymap.set("i", "<C-k>", "<Up>", { desc = "Move up" })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "Move right" })
