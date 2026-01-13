vim.cmd("let g:go_disable_default_syntax = 1")
vim.cmd("filetype plugin indent on")

local status_ok, ts_highlight = pcall(require, "nvim-treesitter.highlight")
if status_ok then
    ts_highlight.enable()
end

