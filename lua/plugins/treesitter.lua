return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            auto_install = true,
            --ensure_installed = {"lua",},
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
