return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      icons_enabled = true,
      section_separators = { left = "", right = "" },
      component_separators = { left = "", right = "" },
    },
    sections = {
      lualine_b = {
        { "branch", icon = "" },
        "diagnostics",
      },
      lualine_z = { "lsp_status" },
    },
  },
}
