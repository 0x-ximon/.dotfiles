local status, nvim_notify = pcall(require, "notify")
if not status then
	print("Neo-tree isn't working")
end

nvim_notify.setup({
	background_colour = "#000000",
})

vim.notify = nvim_notify
