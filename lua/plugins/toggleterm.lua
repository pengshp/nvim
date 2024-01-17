return {
  {
    "akinsho/toggleterm.nvim",
    event = "ColorScheme",
    cmd = "ToggleTerm",
    keys = {
      { "<F5>", "<cmd>ToggleTerm<cr>", desc = "ToggleTerm" },
    },
    opts = {
      open_mapping = [[<F5>]],
      size = 10,
      direction = "horizontal",
    },
  },
}
