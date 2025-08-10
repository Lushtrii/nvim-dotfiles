return {
  "mfussenegger/nvim-lint",
  config = function ()
      local lint = require("lint")

      lint.linters_by_ft = {
          c = { "clang-tidy" },
          cpp = { "clang-tidy" },
          css = { "stylelint" },
          kotlin = { "ktlint" },
          lua = { "luacheck" },
          python = { "pylint" },
          rust = { "clippy"},
      }

      local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

      vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
          group = lint_augroup,
          callback = function()
            lint.try_lint()
          end,
        })

        vim.keymap.set("n", "<leader>l", function()
          lint.try_lint()
        end, { desc = "Trigger linting for current file" })

      end,
}
