local status, flutter_tools = pcall(require, "flutter-tools")
if not status then
	print("flutter tools not configured correctly")
end

flutter_tools.setup({
	flutter_lookup_cmd = "dirname $(which flutter)",
})
