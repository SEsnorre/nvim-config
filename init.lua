vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "
vim.cmd("set number")

require("config.lazy")

require("monokai-pro").setup({
    filter = "ristretto"
})
vim.cmd([[colorscheme monokai-pro]])

local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

local config = require("nvim-treesitter.configs")
config.setup({
    ensure_installed = {
        "lua", "vim", "sql", "r", "typescript", "javascript", "python",
        "html", "css", "powershell", "markdown", "markdown_inline",
        "json", "json5", "htmldjango", "bash"
    },
    highlight = {enable = true},
    indent = {enable = true},
})
