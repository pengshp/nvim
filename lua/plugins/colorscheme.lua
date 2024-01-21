return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    enabled = false,
    opts = {
      --- @usage 'auto'|'main'|'moon'|'dawn'
      variant = "auto",
      --- @usage 'main'|'moon'|'dawn'
      dark_variant = "moon",
      dim_inactive_windows = false,
      extend_background_behind_borders = true,

      styles = {
        bold = true,
        italic = true,
        transparency = true,
      },
      -- Alternatively, set all headings at once.
      -- headings = "subtle",
    },

    -- Change specific vim highlight groups
    -- https://github.com/rose-pine/neovim/wiki/Recipes
    highlight_groups = {
      ColorColumn = { bg = "rose" },
      NotifyBackground = { bg = "overlay" },

      -- Blend colours against the "base" background
      CursorLine = { bg = "foam", blend = 10 },
      StatusLine = { fg = "love", bg = "love", blend = 10 },

      -- By default each group adds to the existing config.
      -- If you only want to set what is written in this config exactly,
      -- you can set the inherit option:
      Search = { bg = "gold", inherit = false },
    },
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    enabled = true,
    lazy = false,
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      background = { -- :h background
        light = "latte",
        dark = "mocha",
      },
      transparent_background = true,
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
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = true,
        mini = {
          enabled = true,
          indentscope_color = "",
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
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
      },
    },
  },

  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        -- floats = "transparent",
      },
    },
    enabled = false,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
