return {
	'nvim-telescope/telescope.nvim',
	dependencies = {'nvim-lua/plenary.nvim'},
	opts = {
		tag = '0.1.8'
	},
    keys = {
        {"<leader>ff", "<cmd>Telescope find_files<cr>", desc="Find files (Telescope)"},
        {"<leader>fg", "<cmd>Telescope live_grep<cr>", desc="Live grep (Telescope)"}
    }
}
