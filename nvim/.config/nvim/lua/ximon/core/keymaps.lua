vim.g.mapleader = " "

local keymap = vim.keymap

-- General Keymaps
keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<leader>nh", ":nohl<CR>")
keymap.set("n", "U", "<C-r>")
keymap.set("n", "x", '"_x')

-- Navigation Keymaps
keymap.set("n", "H", "^")
keymap.set("n", "L", "$")
keymap.set("n", "K", "{")
keymap.set("n", "J", "}")

-- Window size Mappings
keymap.set("n", "<C-Left>", ":vertical resize -1<CR>")
keymap.set("n", "<C-Right>", ":vertical resize +1<CR>")
keymap.set("n", "<C-Up>", ":resize +1<CR>")
keymap.set("n", "<C-Down>", ":resize -1<CR>")

-- Increment Numbers
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- Window Splitting
keymap.set("n", "<leader>sr", "<C-w>v")
keymap.set("n", "<leader>sd", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", ":close<CR>")

-- Tabs Keymaps
keymap.set("n", "<leader>to", ":tabnew<CR>")
keymap.set("n", "<leader>tx", ":tabclose<CR>")
keymap.set("n", "<leader>tn", ":tabn<CR>")
keymap.set("n", "<leader>tp", ":tabp<CR>")

-- Helpful Keymaps
keymap.set("n", ";w", ":update<CR>")
keymap.set("n", ";q", ":close<CR>")

-- Terminal Keymaps
keymap.set("n", ";t", ":vs | te<CR>")
keymap.set("t", "jk", "<C-\\><C-n>")

-- Vim Maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")
keymap.set("n", "<leader>cd", ":cd %:p:h<CR>:pwd<CR>")

-- Neo Tree
keymap.set("n", ";e", ":Neotree toggle<CR>")
keymap.set("n", "-", "<CMD>Oil<CR>", {
    desc = "Open parent directory",
})

-- Telescope Mappings
keymap.set("n", ";f", ":Telescope find_files<CR>")
keymap.set("n", ";g", ":Telescope live_grep<CR>")
keymap.set("n", ";b", ":Telescope buffers<CR>")

-- Neocolum Mappings
keymap.set("n", ";c", ":ToggleNeoColumn<CR>")
keymap.set("n", ";d", ":Alpha<CR>")

-- Magit Mappings
keymap.set("n", ";m", ":Neogit<CR>")


-- local toggle_theme = function()
--     if vim.api.nvim_get_option_value("background", {}) == "light" then
--         vim.api.nvim_set_option_value("background", "dark", {})
--         vim.cmd("colorscheme github_dark_default")
--     else
--         vim.api.nvim_set_option_value("background", "light", {})
--         vim.cmd("colorscheme github_light_default")
--     end
-- end
--
-- vim.keymap.set('n', ';s', toggle_theme)
