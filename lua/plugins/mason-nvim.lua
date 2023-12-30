return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "yamlfmt",
        "sqlfmt",
        "mdformat",
        "ruff", -- python
      },
    },
  },
}
