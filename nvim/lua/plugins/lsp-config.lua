return {
	{
		"mason-org/mason.nvim",
		opts = {},
		config = function()
			require("mason").setup()
		end
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "jdtls" }
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.config('lua_ls',{settings = {Lua = {diagnostics = { globals = { "vim" } },},},})
			vim.lsp.enable("clangd")
			vim.lsp.enable('lua_ls')
			vim.lsp.enable('jdtls')
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
		end
	}
}
