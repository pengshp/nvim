-- lazy.nvim
return {
  "chrisgrieser/nvim-scissors",
  event = "VeryLazy",
  dependencies = "nvim-telescope/telescope.nvim", -- optional
  opts = {
    snippetDir = vim.fn.stdpath("config") .. "/snippets",
    jsonFormatter = "jq", -- "yq"|"jq"|"none"
  },
  keys = {
    {
      mode = { "n" },
      "<leader>se",
      function()
        require("scissors").editSnippet()
      end,
      desc = "edit Snippet.",
    },
    {
      mode = { "n", "x" },
      "<leader>sl",
      function()
        require("scissors").addNewSnippet()
      end,
      desc = "add new snippet.",
    },
  },
}
