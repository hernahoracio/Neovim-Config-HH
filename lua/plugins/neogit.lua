return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  cmd = "Neogit",
  keys = {
    {
      "<leader>gn",
      function()
        require("neogit").open()
      end,
      desc = "Open Neogit",
    },
  },
  opts = {},
}
