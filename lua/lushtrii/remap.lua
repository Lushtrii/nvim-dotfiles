vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- vim.g.surround_no_mappings = true

vim.keymap.set('n', '<F12>f', ':silent !firefox "%:p" &<CR>', { silent = true })
vim.keymap.set('n', '<F12>c', ':silent !google-chrome-stable "%:p" &<CR>', { silent = true })


-- Mapping options
local opts = { noremap = true, silent = true }

-- Key mappings
vim.api.nvim_set_keymap('i', '"', '""<left>', opts)
vim.api.nvim_set_keymap('i', "'", "''<left>", opts)
vim.api.nvim_set_keymap('i', '(', '()<left>', opts)
vim.api.nvim_set_keymap('i', '[', '[]<left>', opts)
vim.api.nvim_set_keymap('i', '{', '{}<left>', opts)
vim.api.nvim_set_keymap('i', '{<CR>', '{<CR>}<ESC>O', opts)

