-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local options = { noremap = true, silent = true }

map("i", "jj", "<Esc>", options)

-- Increment/decrement
map("n", "+", "<C-a>")
map("n", "-", "<C-x>")

-- Select all
map("n", "<C-a>", "gg<S-v>G")

-- Tab management
map("n", "<M-h>", ":bprev<CR>", options)
map("n", "<M-l>", ":bnext<CR>", options)
map("n", "<S-x>", ":bw<CR>", options)

-- Window management
map("n", "ss", ":split<Return>", options)
map("n", "sv", ":vsplit<Return>", options)
map("n", "sh", "<C-w>h")
map("n", "sk", "<C-w>k")
map("n", "sj", "<C-w>j")
map("n", "sl", "<C-w>l")
map("n", "<C-S-h>", "<C-w><")
map("n", "<C-S-l>", "<C-w>>")
map("n", "<C-S-k>", "<C-w>+")
map("n", "<C-S-j>", "<C-w>-")

-- Diagnostics
-- map("n", "<C-j>", function()
--   vim.diagnostic.goto_next()
-- end, options)
