return {
  "olimorris/codecompanion.nvim",
  config = true,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    strategies = {
      -- Change the default chat adapter
      chat = {
        adapter = "deepseek",
      },
      inline = {
        adapter = "deepseek",
      },
    },
  },
  keys = {
    {
      "<LocalLeader>a",
      "<cmd>CodeCompanionChat Toggle<cr>",
      mode = { "n", "v" },
      desc = "Code chat toggle",
    },
    {
      "ga",
      "<cmd>CodeCompanionChat Add<cr>",
      mode = { "v" },
      desc = "Code chat add",
    },
  },
}
