require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {'clangd', 'pyright', 'rust_analyzer', 'html', 'cssls', 'lua_ls', 'gopls', 'ts_ls'},
})

vim.diagnostic.config({
  virtual_text = true, 
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = false,
  float = {
    border = 'rounded',
    source = 'always',
    header = '',
    prefix = '',
  },
})

local on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
end

local servers = { 'lua_ls', 'pyright', 'clangd', 'gopls', 'ts_ls', 'html', 'cssls', 'rust_analyzer' }
for _, server in ipairs(servers) do
  vim.lsp.config(server, {
    cmd_env = { PATH = vim.env.PATH },
  })
  vim.lsp.enable(server)
end

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(event)
    on_attach(nil, event.buf)
  end,
})

