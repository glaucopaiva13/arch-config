return {
    {
        "williamboman/mason.nvim",
        opts = {},
    },

    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "williamboman/mason.nvim",
            "neovim/nvim-lspconfig",
        },
        opts = {
            ensure_installed = {
                "lua_ls",
                "pyright",
                "clangd",
                "jdtls",
                "ts_ls",
            },
        },
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.enable({
                "lua_ls",
                "pyright",
                "clangd",
                "jdtls",
                "ts_ls",
            })
        end,
    },
}
