return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "bashls",
            "clangd",
            "cmake",
            "cssls",
            "dockerls",
            "emmet_language_server",
            "html",
            "java_language_server",
            "jsonls",
            "kotlin_language_server",
            "lua_ls",
            "markdown_oxide",
            "postgres_lsp",
            "pyright",
            "rust_analyzer",
            "sqlls",
            "tailwindcss",
            "taplo",
            "ts_ls",
            "yamlls"
        }
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
}
