vim.g.mapleader = " "

local keymap = vim.keymap

-- General Keymaps
keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<leader>nh", ":nohl<CR>")
keymap.set("n", "x", '"_x')

-- Window size Mappings
keymap.set("n", "<C-Left>", ":vertical resize +1<CR>")
keymap.set("n", "<C-Right>", ":vertical resize -1<CR>")
keymap.set("n", "<C-Up>", ":resize -1<CR>")
keymap.set("n", "<C-Down>", ":resize +1<CR>")

-- Increment Numbers
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- Window Splitting
keymap.set("n", "<leader>sv", "<C-w>v") -- Split Vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- Split Horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- Split Windows Equally
keymap.set("n", "<leader>sx", ":close<CR>") -- Close current split window

-- Tabs Keymaps
keymap.set("n", "<leader>to", ":tabnew<CR>") -- Open New Tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- Close Current Tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- Go to Next Tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- Go to Previous Tab

-- Terminal Keymaps
keymap.set("n", ";t", ":terminal<CR>")

-- Vim Maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- Neo Tree
keymap.set("n", ";e", ":Neotree toggle<CR>")

-- Telescope Mappings
keymap.set("n", ";f", ":Telescope find_files<CR>")
keymap.set("n", ";r", ":Telescope live_grep<CR>")

-- Neocolum Mappings
keymap.set("n", ";c", ":ToggleNeoColumn<CR>")

-- Switching Colorschemes
keymap.set("n", ";l", ":colorscheme github_light<CR>")
keymap.set("n", ";d", ":colorscheme github_dark<CR>")
