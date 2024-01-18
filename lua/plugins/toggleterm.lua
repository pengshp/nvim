return {
  {
    "akinsho/toggleterm.nvim",
    event = "ColorScheme",
    cmd = "ToggleTerm",
    keys = {
      { "<F5>", "<cmd>ToggleTerm<cr>", desc = "ToggleTerm" },
    },
    config = function()
      local highlights = require("rose-pine.plugins.toggleterm")
      require("toggleterm").setup({
        highlights = highlights,
        open_mapping = [[<F5>]],
        size = 10,
        direction = "horizontal",
      })
    end,
  },
}
