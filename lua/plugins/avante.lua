return {
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    version = false,
    build = "make",
    dependencies = {
      "zbirenbaum/copilot.lua",
      "MunifTanjim/nui.nvim",
      "HakonHarnes/img-clip.nvim",
      "stevearc/dressing.nvim",
    },
    opts = {
      provider = "copilot",
      auto_suggestions_provider = "copilot",
    },
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = false,
      },
      panel = {
        enabled = false,
        auto_refresh = false,
      },
    },
  },
}
