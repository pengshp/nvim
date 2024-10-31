-- lazy.nvim
return {
  "chrisgrieser/nvim-scissors",
  event = "BufReadPost",
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
      desc = "Edit Snippet",
    },
    {
      mode = { "n", "x" },
      "<leader>sp",
      function()
        require("scissors").addNewSnippet()
      end,
      desc = "Add new snippet",
    },
  },
  -- cmd = { "addNewSnippet", "editSnippet" },
}
