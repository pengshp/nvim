return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "pnx/lualine-lsp-status",
  },
  event = "ColorScheme",
  opts = {
    options = {
      icons_enabled = true,
      theme = "auto",
      disabled_filetypes = {
        statusline = { "dashboard" },
        winbar = {},
      },
      section_separators = { left = "", right = "" },
      component_separators = { left = "", right = "" },
    },
    sections = {
      lualine_b = {
        { "branch", icon = "" },
        "diagnostics",
      },
      lualine_z = { "lsp-status" },
    },
  },
}
