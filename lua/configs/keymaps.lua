local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.keymap.set

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

keymap("", "<A-,>", "<Nop>", opts)
keymap("", "<A-.>", "<Nop>", opts)
keymap("", "<A-/>", "<Nop>", opts)

-- Normal --
-- Use '<A-tab>' open nvimtree
keymap("n", "<A-Tab>", ":NvimTreeToggle<CR>", opts)
-- Use '<A-Left>' cycle prev buffer
keymap("n", "<A-Left>", ":BufferLineCyclePrev<CR>", opts)
-- Use '<A-Right>' cycle next buffer
keymap("n", "<A-Right>", ":BufferLineCycleNext<CR>", opts)
-- Use '<A-q>' close current buffer
keymap("n", "<A-q>", ":bd<CR>", opts)
-- Use w replace i
keymap("n", "w", "i", opts)

-- Insert --
-- Use '<leader>qq' to exit insert mode
keymap("i", "<A-q>", "<ESC>", opts)

-- Visual --

-- Visual Block --

-- Terminal --
