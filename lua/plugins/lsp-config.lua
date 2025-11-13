return {
	{
		"mason-org/mason.nvim",
		opts = {},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "lua_ls", "pyrefly", "pyright", "emmet_language_server", 'jsonls'},
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

			-- Global default config
			vim.lsp.config("*", { capabilities = capabilities })
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})

			-- Cross Platform .venv detection
			local function get_python_path()
				local cwd = vim.fn.getcwd()
				if vim.loop.os_uname().version:match("Windows") then
					return cwd .. "\\.venv\\Scripts\\python.exe"
				else
					return cwd .. "/.venv/bin/python"
				end
			end

			-- pyright setup
			vim.lsp.config("pyright", {
				capabilities = capabilities,
				settings = {
					python = {
						pythonPath = get_python_path(),
					},
				},
			})
		end,
	},
}
