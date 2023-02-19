local status, smartcolumn = pcall(require, "smartcolumn")
if not status then
	print("We need smartcolumn to work")
end

smartcolumn.setup()
