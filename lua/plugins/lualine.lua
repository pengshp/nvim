return {
  "nvim-lualine/lualine.nvim",
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
        "diff",
        "diagnostics",
      },
      lualine_z = {
        function()
          return " " .. os.date("%R") .. " "
        end,
      },
    },
  },
}
