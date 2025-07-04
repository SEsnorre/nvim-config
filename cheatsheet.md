# Personal NeoVim cheat sheet

Here I  will collect keybindings that are specific to this configuration or general NeoVim/Vim stuff. Mostly it will be stuff i alway have to look up.
I may be incomplete.

## Neotree

|Keys|Mode|Description|
|---|---|---|
|<C-n>|n|toggle neotree left|
|s|n|open file in new vertical window|
|S|n|open file in new horizontal window|

## Telescope

|Keys|Mode|Description|
|---|---|---|
|<C-p>|n|fuzzifind file in workspace|
|<Leader>fg|n|live grep in workspace|

## Lsp

|Keys|Mode|Description|
|---|---|---|
|grn|n|vim.lsp.buf.rename()|
|gra|n,v|vim.lsp.buf.code_action()|
|grr|n|vim.lsp.buf.references()|
|gri|n|vim.lsp.buf.implementation()|
|grt|n|vim.lsp.buf.type_definition()|
|K|n|vim.lsp.buf.hover()|
