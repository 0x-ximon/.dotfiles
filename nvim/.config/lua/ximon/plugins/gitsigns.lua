local status, gitsigns = pcall(require, "gitsigns")
if not status then
	print("gitsigns not configured correctly")
end

gitsigns.setup()
