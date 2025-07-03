# Personal NeoVim configuration using Lazy.vim

I'm switching to [NeoVim](https://neovim.io/) because I want to have a more productive and lightwheight development environment under my hands. Switching between keyboard and mouses is kind of anoying and I want to use my mouse as little as possible.

> Why wasting time switching between Input devices?

This was my original question and I have seen a lot of great videos on that topic.
Here I want to thank the youtuber (not sponsored or something else) **[typecraft](https://www.youtube.com/@typecraft_dev)** for his amazing videos thath got me into this and thath helped me start and configure NeoVim.

## What is in this config?

This configuration is a based on [lazy.nvim](https://www.lazy.folke.io) and currently consists of the following plugins:

- **monokai-pro** - my preffered color scheme (yes, it is not *catpuccin*)
- **neotree** - revealing the filesystem on the side
- **telescope** - for live grep and fzf
- **treesitter** - indentation and highliting of code

For the detailed configuration lookup the [init.lua](./init.lua) file. It also contains some keybind configurations.


I will also make a [cheat sheet](./cheatsheet.md) with important commands that I use in NeoVim. ***This is still work in progress!***

## You want to use the config?

To use this configuration just clone this reposiroy in your ~/.config/nvim on linux

```
cd ~/.config
git clone https://github.com/SEsnorre/nvim-config.git nvim
```

or %userprofile%\AppData\local\nvim on windows.

```
cd ~/.config
git clone https://github.com/SEsnorre/nvim-config.git nvim
```

Keep in mind that you will need to have some sort of c compiler installed.

## Suggestions?

Feel free to open a discusion github to suggest changes or optimizations if you have found something that can be done better.

