require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- Copiar seleção para o clipboard com <leader>y
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Copiar para o clipboard" })

-- Copiar linha inteira com <leader>Y
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Copiar linha para o clipboard" })

