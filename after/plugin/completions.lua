local cmp = require("cmp")

cmp.setup({
  mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
  }, {
    { name = 'buffer' },
  }),

  snippet = {
    expand = function(args)
      require('luasnip').expand(args.body)
    end,
  },
})

require('mason').setup({})

local servers = {
  'gopls',        
  'pyright',        
  'lua_ls',
  'clangd',
}

require('mason-lspconfig').setup({
  ensure_installed = servers,
  handlers = {
    function(server_name)
      vim.lsp.enable(server_name)
    end,
  },
})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(event)
    local opts = { buffer = event.buf }
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
  end,
})

