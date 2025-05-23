return {
  "echasnovski/mini.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = false,

  config = function()
    require("mini.pairs").setup()
    require("mini.icons").setup()
    require("mini.diff").setup()
    require("mini.git").setup()

    -- Mini.Statusline
    local statusline = require("mini.statusline")
    statusline.section_location = function() return "%2l:%-2v" end
    statusline.setup()

    -- Mini.Files
    require("mini.files").setup(
      {
	mappings = {
	  go_in_plus = "<CR>",
	  go_out_plus = "=",
	  synchronize = "~"
	}
      }
    )

    -- Better Around/Inside textobjects
    --
    -- Examples:
    --  - va)  - [V]isually select [A]round [)]paren
    --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
    --  - ci'  - [C]hange [I]nside [']quote
    -- require("mini.ai").setup({ n_lines = 500 })

    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    --
    -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    -- - sd'   - [S]urround [D]elete [']quotes
    -- - sr)'  - [S]urround [R]eplace [)] [']
    -- require("mini.surround").setup()
  end,
}
