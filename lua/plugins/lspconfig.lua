return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = true,
        signs = true,
        underline = true,
        update_in_insert = false,
        severity_sort = false,
        float = {
          border = "rounded",
          source = "always",
          header = "",
          prefix = "",
        },
      },
      servers = {
        clangd = {},
        pyright = {},
        rust_analyzer = {},
        html = {},
        cssls = {},
        lua_ls = {},
        gopls = {},
        ts_ls = {},
      },
    },
  },
}


