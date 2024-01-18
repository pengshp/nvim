return {
  "mfussenegger/nvim-lint",
  opts = {
    linters_by_ft = {
      fish = { "fish" },
      zsh = { "zsh" },
      python = { "ruff" },
      yaml = { "yamllint" },
      bash = { "shellcheck" },
      markdown = { "markdownlint" },
    },
    linters = {},
  },
}
