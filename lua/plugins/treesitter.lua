return {
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
