return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      icons_enabled = true,
      theme = "auto",
      section_separators = { left = "", right = "" },
      component_separators = { left = "", right = "" },
      disabled_filetypes = {
        "snacks_dashboard",
        "dashboard",
      },
    },
    sections = {
      lualine_b = {
        { "branch", icon = "" },
        "diagnostics",
      },
      lualine_c = { { "filename", path = 1 }, "filetype" },
      lualine_z = { "lsp_status" },
    },
  },
}
