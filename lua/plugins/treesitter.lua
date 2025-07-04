return {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "lua", "vim", "sql", "r", "typescript", "javascript", "python",
                "html", "css", "powershell", "markdown", "markdown_inline",
                "json", "json5", "htmldjango", "bash"
            },
            highlight = {enable = true},
            indent = {enable = true},
        })
    end
}
