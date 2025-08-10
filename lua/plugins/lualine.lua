return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- opts = {
	-- 	options = {
	-- 		theme = "ayu",
	-- 	},
	--
	-- 	sections = {
	-- 		lualine_x = { "lsp_status", "encoding", "fileformat", "filetype" },
	-- 	},
	-- },
	config = function()
		local function formatter_status()
			-- Check if 'conform' is available
			local status, conform = pcall(require, "conform")
			if not status then
				return "Conform not installed"
			end

			local lsp_format = require("conform.lsp_format")

			-- Get formatters for the current buffer
			local formatters = conform.list_formatters_for_buffer()
			if formatters and #formatters > 0 then
				local formatterNames = {}

				for _, formatter in ipairs(formatters) do
					table.insert(formatterNames, formatter)
				end

				return "󰷈 " .. table.concat(formatterNames, " ")
			end

			-- Check if there's an LSP formatter
			local bufnr = vim.api.nvim_get_current_buf()
			local lsp_clients = lsp_format.get_format_clients({ bufnr = bufnr })

			if not vim.tbl_isempty(lsp_clients) then
				return "󰷈 LSP Formatter"
			end

			return ""
		end

		local lualine = require("lualine")

		lualine.setup({
			options = {
				theme = "ayu",
			},
			sections = {
				lualine_x = { "lsp_status", formatter_status, "encoding", "fileformat", "filetype" },
			},
		})
	end,
}
