return {
  "yetone/avante.nvim",
  event = { "BufReadPost", "BufNewFile" },
  lazy = false,
  version = "*", -- set this if you want to always pull the latest change
  opts = {
    provider = "openai",
    -- auto_suggestions_provider = "claude",
    openai = {
      endpoint = "https://api.deepseek.com",
      model = "deepseek-coder",
      temperature = 0,
      max_tokens = 4096,
    },
  },
  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  build = "make",
  -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
}
