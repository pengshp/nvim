return {
  -- formatters.
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        bash = { "shfmt" },
        go = { "goimports", "gofumpt" },
        python = { "ruff_organize_imports", "ruff_format" },
        json = { "jq" },
        toml = { "taplo" },
        markdown = { "prettier" },
        yaml = { "yamlfmt" },
        sql = { "sqlfmt" },
        css = { "prettier" },
        scss = { "prettier" },
        xml = { "xmlformatter" },
      },
      -- the options you set here will be merged with the builtin formatters.
      -- you can also define any custom formatters here.
      formatters = {
        injected = { options = { ignore_errors = true } },
        -- # example of using shfmt with extra args
        shfmt = {
          prepend_args = { "-i", "4", "-ci" },
        },
        prettier = {
          prepend_args = { "--tab-width", "4" },
        },
      },
    },
  },

  -- lint code.
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        fish = { "fish" },
        zsh = { "zsh" },
        python = { "ruff" },
        yaml = { "yamllint" },
        bash = { "shellcheck" },
        dockerfile = { "hadolint" },
      },
      linters = {},
    },
  },
  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "json",
        "jsonc",
        "python",
        "yaml",
        "dockerfile",
        "toml",
        "go",
        "hcl",
        "kdl",
      },
    },
  },
}
