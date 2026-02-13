require('avante').setup({
  provider = "copilot",
  auto_suggestions_provider = "copilot",
  behaviour = {
    auto_suggestions = false,
  },
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

