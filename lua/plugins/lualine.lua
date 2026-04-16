return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      icons_enabled = true,
      theme = "auto",
      section_separators = {},
      component_separators = {},
      disabled_filetypes = {
        statusline = { "snacks_dashboard" },
        winbar = { "snacks_dashboard" },
      },
    },
    sections = {
      lualine_b = {
        { "branch", icon = "" },
      },
      lualine_c = { { "filename", path = 4 }, "searchcount" },
      lualine_x = { "location", "progress" },
      lualine_y = { "filetype", "fileformat", "encoding" },
      lualine_z = { "lsp_status" },
    },
  },
}
