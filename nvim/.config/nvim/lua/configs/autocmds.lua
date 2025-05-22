-- Highlight yanked text briefly after any yank operation.
-- This autocmd uses the built-in highlight-on-yank function for visual feedback,
-- making it easier to see what was just copied.
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("ximon-highlight-yank", { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})
