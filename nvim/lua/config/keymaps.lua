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
