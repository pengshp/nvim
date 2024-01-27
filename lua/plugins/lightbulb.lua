return {
  {
    "kosayoda/nvim-lightbulb",
    enabled = false,
    lazy = true,
    event = "VeryLazy",
    opts = {
      autocmd = { enabled = true },
      -- Configuration for various handlers:
      -- 1. Sign column.
      sign = {
        enabled = true,
        -- Text to show in the sign column.
        -- Must be between 1-2 characters.
        text = "💡",
        -- Highlight group to highlight the sign column text.
        hl = "LightBulbSign",
      },
      -- Scenarios to not show a lightbulb.
      ignore = {
        -- LSP client names to ignore.
        -- Example: {"null-ls", "lua_ls"}
        clients = {},
        -- Filetypes to ignore.
        -- Example: {"neo-tree", "lua"}
        ft = { "neo-tree" },
        -- Ignore code actions without a `kind` like refactor.rewrite, quickfix.
        actions_without_kind = true,
      },
    },
  },
}
