--[[local lsp = require("lsp-zero")
lsp.preset("recommended")

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),	
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),	
	['<C-y>'] = cmp.mapping.confirm({ select = true}),	
	['<C-space>'] = cmp.mapping.complete()	
})


lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

-- to learn how to use mason.nvim with lsp-zero
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {'clangd', 'pyright', 'rust_analyzer', 'html', 'cssls'},
  handlers = {
    lsp.default_setup,
  },
})

lsp.setup()
]]
