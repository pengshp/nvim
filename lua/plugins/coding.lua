return {
  -- formatters.
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        bash = { "shfmt" },
        go = { "gofmt", "goimports", "gofumpt" },
        python = { "ruff" },
        json = { "jq" },
        toml = { "taplo" },
        markdown = { "markdownlint", "markdown-toc" },
        yaml = { "yamlfmt" },
        sql = { "sqlfmt" },
        css = { "prettier" },
        xml = { "xmlformat" },
      },
      -- the options you set here will be merged with the builtin formatters.
      -- you can also define any custom formatters here.
      formatters = {
        injected = { options = { ignore_errors = true } },
        -- # example of using shfmt with extra args
        shfmt = {
          prepend_args = { "-i", "4", "-ci" },
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
        markdown = { "markdownlint-cli2" },
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
        "bash",
        "json",
        "jsonc",
        "lua",
        "python",
        "yaml",
        "dockerfile",
        "toml",
        "go",
        "hcl",
        "kdl",
      },
      incremental_selection = {
        keymaps = {
          init_selection = "<A-space>",
          node_incremental = "<A-space>",
        },
      },
    },
    keys = {
      -- disable the keymap
      -- { "<c-space>", false },
      { "<A-space>", desc = "Increment selection" },
    },
  },
  -- completion
  {
    "saghen/blink.cmp",
    opts = {
      keymap = { preset = "default" },
    },
  },
}
