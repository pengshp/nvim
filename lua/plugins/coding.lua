return {
  -- formatters.
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        fish = { "fish_indent" },
        sh = { "shfmt" },
        go = { "gofmt" },
        -- python = { "ruff" },
        json = { "jq" },
        toml = { "taplo" },
      },
      -- the options you set here will be merged with the builtin formatters.
      -- you can also define any custom formatters here.
      formatters = {
        injected = { options = { ignore_errors = true } },
        -- # example of using dprint only when a dprint.json file is present
        -- dprint = {
        --   condition = function(ctx)
        --     return vim.fs.find({ "dprint.json" }, { path = ctx.filename, upward = true })[1]
        --   end,
        -- },
        --
        -- # example of using shfmt with extra args
        shfmt = {
          prepend_args = { "-i", "4", "-ci" },
        },
        -- ruff_format = {
        --   command = "ruff",
        --   prepend_args = { "format", "-" },
        --   env = {},
        -- },
        taplo = {
          command = "taplo",
          inherit = true,
          prepend_args = { "" },
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
        markdown = { "markdownlint" },
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
        "markdown",
        "markdown_inline",
        "python",
        "vim",
        "vimdoc",
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
}
