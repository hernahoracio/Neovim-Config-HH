return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      -- 1. Add your emoji source
      table.insert(opts.sources, { name = "emoji" })

      -- 2. Disable completion in prompt-like plugin buffers
      opts.enabled = function()
        local buftype = vim.api.nvim_get_option_value("buftype", { buf = 0 })
        if buftype == "prompt" or buftype == "nofile" then
          return false
        end
        return true
      end
    end,
  },
  {
    "brenton-leighton/multiple-cursors.nvim",
    event = "VeryLazy",
    config = function()
      require("multiple-cursors").setup({
        default_keybindings = true,
        updatetime = 150,
        hint = {
          enable = true,
          show_on_start = true,
        },
      })
    end,
  },
}
