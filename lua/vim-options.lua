local opts = {noremap = true, silent = true}
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set({ "n", "v" }, "<space>", "<Nop>",opts)
vim.cmd("set number")

-- shortcuts for moving through panes
vim.keymap.set({'n'},'<C-h>', '<C-w>h', opts)
vim.keymap.set({'n'},'<C-j>', '<C-w>j', opts)
vim.keymap.set({'n'},'<C-k>', '<C-w>k', opts)
vim.keymap.set({'n'},'<C-l>', '<C-w>l', opts)
vim.keymap.set({'n'},'<C->>', '<C-w>>', opts)
vim.keymap.set({'n'},'<C-<>', '<C-w><', opts)
vim.keymap.set({'n'},'<C-+>', '<C-w>+', opts)
vim.keymap.set({'n'},'<C-->', '<C-w>-', opts)

-- move between buffers
vim.keymap.set({'n'},'<leader>n', ':bn<CR>', opts)
vim.keymap.set({'n'},'<leader>b', ':bp<CR>', opts)
vim.keymap.set({'n'},'<leader>x', ':bd<CR>', opts)

-- yanking to clipboard and pasting from clipboard
vim.keymap.set({'n', 'v'},'<leader>y', '"+y', opts)
vim.keymap.set({'n', 'v'},'<leader>p', '"+p', opts)
vim.keymap.set({'n', 'v'},'<leader>P', '"+P', opts)

