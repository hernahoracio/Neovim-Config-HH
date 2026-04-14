return {
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
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    event = "VeryLazy",
    build = "make tiktoken",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "zbirenbaum/copilot.lua",
    },
    opts = {
      auto_insert_mode = true,
      question_header = "  User ",
      answer_header = "  Copilot ",
      error_header = "  Error ",
      window = {
        layout = "vertical",
        width = 0.4,
      },
    },
    keys = {
      {
        "<leader>ac",
        "<cmd>CopilotChatToggle<cr>",
        desc = "CopilotChat Toggle",
      },
      {
        "<leader>aq",
        function()
          local input = vim.fn.input("Ask Copilot: ")
          if input ~= "" then
            require("CopilotChat").ask(input)
          end
        end,
        desc = "CopilotChat Ask",
      },
      {
        "<leader>aq",
        function()
          local input = vim.fn.input("Ask Copilot about selection: ")
          if input ~= "" then
            require("CopilotChat").ask(input, {
              selection = require("CopilotChat.select").visual,
            })
          end
        end,
        mode = "x",
        desc = "CopilotChat Ask Selection",
      },
      {
        "<leader>ar",
        "<cmd>CopilotChatReset<cr>",
        desc = "CopilotChat Reset",
      },
    },
  },
}
