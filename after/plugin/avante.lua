require('avante').setup({
  provider = "copilot",
  auto_suggestions_provider = "copilot",
  behaviour = {
    auto_suggestions = false,
  },
  -- You don't need a "providers = { copilot = ... }" block unless 
  -- you want to change the specific model (e.g., to o1 or gpt-4o).
  -- By default, it will use your Org's default model.

  mappings = {
    diff = {
      ours = "co",
      theirs = "ct",
      all_theirs = "ca",
      both = "cb",
      cursor = "cc",
      next = "]x",
      prev = "[x",
    },
  },
})

