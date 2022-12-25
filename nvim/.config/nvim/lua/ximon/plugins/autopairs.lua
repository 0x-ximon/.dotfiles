local status, autopairs = pcall(require, "nvim-autopairs")
local status2, cmp_autopairs = pcall(require, "nvim-autopairs.completion.cmp")
local status3, cmp = pcall(require, "cmp")

if not status then
	print("autopairs isn't configured correctly")
end
if not status2 then
	return
end
if not status3 then
	return
end

autopairs.setup({
	check_ts = true,
	ts_config = {
		lua = { "string" },
		javascript = { "template_string" },
		java = false,
	},
})

cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
