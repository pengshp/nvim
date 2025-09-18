return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    enabled = false,
    lazy = false,
    priority = 1000,
    opts = {
      flavour = "auto", -- latte, frappe, macchiato, mocha
      background = { -- :h background
        light = "latte",
        dark = "macchiato",
      },
      transparent_background = true,
      float = {
        transparent = true, -- enable transparent floating windows
        solid = true, -- use solid styling for floating windows, see |winborder|
      },
      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = { "italic" },
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },
      integrations = {
        cmp = true,
        blink_cmp = true,
        gitsigns = true,
        treesitter = true,
        notify = true,
        mini = {
          enabled = true,
          indentscope_color = "mauve",
        },
        dashboard = true,
        flash = true,
        markdown = true,
        mason = true,
        neotree = true,
        noice = true,
        symbols_outline = true,
        telescope = true,
        which_key = true,
      },
    },
  },

  {
    "folke/tokyonight.nvim",
    opts = {
      style = "moon",
      light_style = "day",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
    enabled = true,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
