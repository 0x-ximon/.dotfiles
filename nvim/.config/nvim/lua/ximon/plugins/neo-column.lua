local status, neo_column = pcall(require, "NeoColumn")
if not status then
	print("NeoColumn is not working, man")
end

neo_column.setup({
	NeoColumn = "81",
})
