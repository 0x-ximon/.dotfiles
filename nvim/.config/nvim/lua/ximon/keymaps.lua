------------------------------------------------------------------------------
------------------------------- GENERAL KEYMAPS -------------------------------
-------------------------------------------------------------------------------

-- Press 'U' in normal mode to redo the last undo
vim.keymap.set("n", "U", "<C-r>")

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Use 'H', 'L', 'K', 'J' to navigate to the beginning/end of the line
vim.keymap.set("n", "H", "^", { desc = "Go to the beginning of the line" })
vim.keymap.set("n", "L", "$", { desc = "Go to the end of the line" })
vim.keymap.set("n", "J", "}", { desc = "Go to the next line" })
vim.keymap.set("n", "K", "{", { desc = "Go to the previous line" })

-- Remap Alt + 'X' similiar to KEYMAPS
vim.keymap.set("n", "<A-x>", ":", { noremap = true })
vim.keymap.set("i", "<A-x>", "<C-o>:", { noremap = true })

-- Use Double Escape to exit Terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>")

-------------------------------------------------------------------------------
-------------------------------- QUICK KEYMAPS --------------------------------
-------------------------------------------------------------------------------

-- Quick Write
vim.keymap.set("n", "<leader>w", "<cmd>update<CR>", { desc = "Quick Write" })

-- Quick Quit
vim.keymap.set("n", "<leader>q", "<cmd>quit<CR>", { desc = "Quick Exit" })

-------------------------------------------------------------------------------
------------------------------- WINDOW KEYMAPS --------------------------------
-------------------------------------------------------------------------------

-- Open Terminal
vim.keymap.set("n", "<leader>!", "<cmd>terminal<CR>", { desc = "Terminal" })

-- Creating and deleting windows
vim.keymap.set("n", "<leader>_", "<C-W>s", { desc = "Split window below" })
vim.keymap.set("n", "<leader>|", "<C-W>v", { desc = "Split window right" })

--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set("n", "<A-h>", "<C-w><C-h>", { desc = "Move to window left" })
vim.keymap.set("n", "<A-l>", "<C-w><C-l>", { desc = "Move to window right" })
vim.keymap.set("n", "<A-j>", "<C-w><C-j>", { desc = "Move to window below" })
vim.keymap.set("n", "<A-k>", "<C-w><C-k>", { desc = "Move to window above" })

--  Use CTRL+SHIFT+<hjkl> to move the current window
vim.keymap.set("n", "<C-h>", "<C-w>H", { desc = "Move window to the left" })
vim.keymap.set("n", "<C-l>", "<C-w>L", { desc = "Move window to the right" })
vim.keymap.set("n", "<C-j>", "<C-w>J", { desc = "Move window to the bottom" })
vim.keymap.set("n", "<C-k>", "<C-w>K", { desc = "Move window to the top" })

--  Use CTRL+<ArrowKey> to resize the current window
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -1<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +1<CR>", { desc = "Increase window width" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -1<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Up>", "<cmd>resize +1<CR>", { desc = "Increase window height" })

-------------------------------------------------------------------------------
------------------------------- BUFFER KEYMAPS --------------------------------
-------------------------------------------------------------------------------

vim.keymap.set("n", "[b", "<cmd>bprevious<cr>", { desc = "Previous Buffer" })
vim.keymap.set("n", "]b", "<cmd>bnext<cr>", { desc = "Next Buffer" })

-------------------------------------------------------------------------------
-------------------------------- TABS KEYMAPS ---------------------------------
-------------------------------------------------------------------------------

vim.keymap.set("n", "[<Tab>", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })
vim.keymap.set("n", "]<Tab>", "<cmd>tabnext<cr>", { desc = "Next Tab" })
vim.keymap.set("n", "<leader><Tab>n", "<cmd>tabnew<cr>", { desc = "New Tab" })

-------------------------------------------------------------------------------
----------------------------- DISABLED KEYMAPS --------------------------------
-------------------------------------------------------------------------------

vim.keymap.del({ "n", "v" }, "gra")
vim.keymap.del("i", "<C-S>")
vim.keymap.del("n", "grn")
vim.keymap.del("n", "grr")
vim.keymap.del("n", "gri")
vim.keymap.del("n", "gO")
