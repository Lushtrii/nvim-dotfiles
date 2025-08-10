return {
	"Shatur/neovim-ayu",
	lazy = false,
	priority = 1000,
	config = function()
		local ayu = require("ayu")
		local colors = require("ayu.colors")
		colors.generate()
		ayu.setup({
			overrides = {
				LineNr = { fg = colors.gutter_active },
			},
		})






		ayu.colorscheme()
	end,
}
