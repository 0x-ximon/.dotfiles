local status, lspsaga = pcall(require, "lspsaga")
if not status then
	print("Lspsaga not working")
end

lspsaga.setup({
	finder = {
		--percentage
		max_height = 0.5,
		force_max_height = false,
		keys = {
			jump_to = "p",
			edit = { "o", "<CR>" },
			vsplit = "s",
			split = "i",
			tabe = "t",
			tabnew = "r",
			quit = { "q", "<ESC>" },
			close_in_preview = "<ESC>",
		},
	},

	definition = {
		edit = "<C-c>o",
		vsplit = "<C-c>v",
		split = "<C-c>i",
		tabe = "<C-c>t",
		quit = "q",
	},

	diagnostic = {
		on_insert = true,
		on_insert_follow = true,
		insert_winblend = 0,
		show_virt_line = true,
		show_code_action = true,
		show_source = true,
		jump_num_shortcut = true,
		--1 is max
		max_width = 0.7,
		custom_fix = nil,
		custom_msg = nil,
		text_hl_follow = false,
		border_follow = true,
		keys = {
			exec_action = "o",
			quit = "q",
			go_action = "g",
		},
	},

	code_action = {
		num_shortcut = true,
		show_server_name = false,
		extend_gitsigns = true,
		keys = {
			-- string | table type
			quit = "q",
			exec = "<CR>",
		},
	},

	ui = {
		-- This option only works in Neovim 0.9
		title = true,
		-- Border type can be single, double, rounded, solid, shadow.
		border = "single",
		winblend = 0,
		expand = "",
		collapse = "",
		code_action = "💡",
		incoming = " ",
		outgoing = " ",
		hover = " ",
		kind = {},
	},

	-- Key Bindings
	move_in_saga = { prev = "<C-k>", next = "<C-j>" },
	finder_action_keys = { open = "<CR>" },
	definition_action_keys = { edit = "<CR>" },
})
