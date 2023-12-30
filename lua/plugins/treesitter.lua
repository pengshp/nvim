return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "vim",
        "yaml",
        "dockerfile",
        "toml",
        "go",
      },
    },
    keys = {
      -- disable the keymap
      { "<c-space>", false },
    },
  },
}
