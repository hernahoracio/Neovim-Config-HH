-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable LazyVim default keymaps
vim.g.lazyvim_keymaps = false

-- Disable Go syntax highlighting (use treesitter instead)
vim.g.go_disable_default_syntax = 1
vim.o.syntax = "off"

-- Transparency settings
vim.opt.winblend = 0 -- Transparency for floating windows
vim.opt.pumblend = 0 -- Transparency for popup menu
