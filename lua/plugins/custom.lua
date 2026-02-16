return {
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
