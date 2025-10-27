-- lazy.nvim
return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      layout = {
        preset = "telescope",
      },
    },
    notifier = { enabled = true },
    zen = { enabled = true },
  },
}
