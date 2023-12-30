return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function()
      return {
        --[[add your custom lualine config here]]
        sections = {
          lualine_z = {
            function()
              return " " .. os.date("%R") .. " "
            end,
          },
        },
      }
    end,
  },
}
