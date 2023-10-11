vim.g.mapleader = " "
vim.keymap.set("i", "jj", "<esc>")

vim.keymap.set("n", "<leader>q", vim.cmd.Ex)

-- Jump through panes with Ctrl + movement keys
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Highlighted text can be moved around with J and K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Ctrl d/u and search term jumps keep cursor in middle of screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

-- Paste over word without copying the pasted over word to buffer with leader p
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Yank to system clipboard with leader y
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Delete to void reg with leader d (to not copy content)
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Replace hovered word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Create/Complete todo item
vim.keymap.set("n", "<leader>c", "i* [] ")
vim.keymap.set("n", "<leader>C", "0f]iX<Esc>lwi~~<Esc>$a~~ []<Esc>\"=strftime(\"%Y-%m-%d\")<CR>Pa<Esc>")
vim.keymap.set("n", "<leader>-", "^i~~<Esc>A~~<Esc>")
 
-- Insert date str
vim.keymap.set("n", "<leader>da", "0i## []<Esc>\"=strftime(\"%a %Y-%m-%d\")<CR>P")
vim.keymap.set("n", "<leader>ti", "\"=strftime(\"%I:%M\")<CR>P")

-- Time keeping for notes
vim.keymap.set("n", "<leader>nda", "0i## []<Esc>\"=strftime(\"%a %Y-%m-%d\")<CR>PA<CR>| Start | Finish | Description |<CR>|-------|--------|-------------|<CR>")
vim.keymap.set("n", "<leader>ne", "0i|  <Esc>\"=strftime(\"%I:%M\")<CR>Pa |   | ")
vim.keymap.set("n", "<leader>tt", "0f|2l\"=strftime(\"%I:%M\")<CR>P")

vim.keymap.set("n", "<CR>", "o<Esc>")

-- Comment and uncomment
vim.keymap.set("n", "<leader>;", "0i//<Esc>")
vim.keymap.set("n", "<leader>'", "0f/xx")
