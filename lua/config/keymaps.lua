local keymap = vim.keymap

-- Neotree

keymap.set("n", "<leader>ee", "<Cmd>Neotree toggle<CR>", { desc = "Toggle file explorer" })

-- Diagnostics


-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })


-- Telescope



-- Diagnostics

keymap.set("n", "<leader>d", vim.diagnostic.open_float)
