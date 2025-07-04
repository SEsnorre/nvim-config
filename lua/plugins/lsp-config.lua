return {
    {
        "mason-org/mason.nvim",
        opts = {}
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
        end
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = { "lua_ls", "pyright", "emmet_language_server"}
        },
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    }
}
