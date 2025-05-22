-------------------------------------------------------------------------------
------------------------------- GENERAL KEYMAPS -------------------------------
-------------------------------------------------------------------------------
-- Press 'jj' in insert mode to exit insert mode
vim.keymap.set("i", "jj", "<Esc>")

-- Press 'U' in normal mode to redo the last undo
vim.keymap.set("n", "U", "<C-r>")

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-------------------------------------------------------------------------------
-------------------------------- QUICK KEYMAPS --------------------------------
-------------------------------------------------------------------------------

-- Quick Write
vim.keymap.set("n", "<leader>w", ":update<CR>", { desc = "Quick Write" })

-- Quick Quit
vim.keymap.set("n", "<leader>q", ":close<CR>", { desc = "Quick Quit" })

-- Quick Close
vim.keymap.set("n", "<leader>x", "<C-W>c", { desc = "Close Window" })

-- Quick Lazy
vim.keymap.set("n", "<leader>l", ":Lazy<CR>", { desc = "Quick Lazy" })

-------------------------------------------------------------------------------
------------------------------- WINDOW KEYMAPS --------------------------------
-------------------------------------------------------------------------------

-- Creating and deleting windows
vim.keymap.set("n", "<leader>_", "<C-W>s", { desc = "Split Window Below" })
vim.keymap.set("n", "<leader>|", "<C-W>v", { desc = "Split Window Right" })

--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })

--  Use CTRL+SHIFT+<hjkl> to move the current window
vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the bottom" })
vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the top" })
vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })

--  Use CTRL+<ArrowKey> to resize the current window
vim.keymap.set("n", "<C-Up>", "<cmd>resize -2<CR>", { desc = "Decrease height of current split" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize +2<CR>", { desc = "Increase height of current split" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<CR>", { desc = "Decrease width of current split" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<CR>", { desc = "Increase width of current split" })

-------------------------------------------------------------------------------
------------------------------- BUFFER KEYMAPS --------------------------------
-------------------------------------------------------------------------------

vim.keymap.set("n", "[b", "<cmd>bprevious<cr>", { desc = "Previous Buffer" })
vim.keymap.set("n", "]b", "<cmd>bnext<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
vim.keymap.set("n", "<leader>bd", "<cmd>bd<cr>", { desc = "Delete Buffer and Window" })

-- vim.keymap.set("n", "<leader>bd", function()
--   Snacks.bufdelete()
-- end, { desc = "Delete Buffer" })

-------------------------------------------------------------------------------
-------------------------------- TABS KEYMAPS ---------------------------------
-------------------------------------------------------------------------------

vim.keymap.set("n", "<leader>[<tab>", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })
vim.keymap.set("n", "<leader>]<tab>", "<cmd>tabnext<cr>", { desc = "Next Tab" })
vim.keymap.set("n", "<leader><tab>n", "<cmd>tabnew<cr>", { desc = "New Tab" })
vim.keymap.set("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })

-------------------------------------------------------------------------------
-------------------------------- LSP KEYMAPS ----------------------------------
-------------------------------------------------------------------------------

local diagnostic_goto = function(next, severity)
  local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
  severity = severity and vim.diagnostic.severity[severity] or nil
  return function()
    go({ severity = severity })
  end
end

vim.keymap.set("n", "]d", diagnostic_goto(true), { desc = "Next Diagnostic" })
vim.keymap.set("n", "[d", diagnostic_goto(false), { desc = "Prev Diagnostic" })
vim.keymap.set("n", "]e", diagnostic_goto(true, "ERROR"), { desc = "Next Error" })
vim.keymap.set("n", "[e", diagnostic_goto(false, "ERROR"), { desc = "Prev Error" })
vim.keymap.set("n", "]w", diagnostic_goto(true, "WARN"), { desc = "Next Warning" })
vim.keymap.set("n", "[w", diagnostic_goto(false, "WARN"), { desc = "Prev Warning" })
vim.keymap.set("n", "[q", vim.cmd.cprev, { desc = "Previous Quickfix" })
vim.keymap.set("n", "]q", vim.cmd.cnext, { desc = "Next Quickfix" })

-------------------------------------------------------------------------------
------------------------------ TOGGLE KEYMAPS ---------------------------------
-------------------------------------------------------------------------------
