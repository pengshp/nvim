return {
  "nvim-lualine/lualine.nvim",
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
        "diff",
        "diagnostics",
      },
      lualine_z = {
        {
          function()
            -- return " " .. os.date("%R") .. " "
            local msg = "No Lsp"
            local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
            local clients = vim.lsp.get_active_clients()
            if next(clients) == nil then
              return msg
            end
            for _, client in ipairs(clients) do
              local filetypes = client.config.filetypes
              if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                return client.name
              end
            end
            return msg
          end,
          icon = "",
        },
      },
    },
  },
}
