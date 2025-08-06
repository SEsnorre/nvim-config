return {
	{
		"mason-org/mason.nvim",
		opts = {
            ensure_installed = {}
        },
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			--ensure_installed = { "lua_ls", "pyright", "emmet_language_server" },
			auto_install = true,
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			vim.lsp.config("*", { capabilities = capabilities })

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
		end,
	},
}
