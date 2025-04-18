return {

  {
    -- Make sure to set this up properly if you have lazy=true
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      file_types = { "markdown", "codecompanion" },
    },
    ft = { "markdown", "codecompanion" },
  },
  {
    "HakonHarnes/img-clip.nvim",
    opts = {
      -- recommended settings
      default = {
        embed_image_as_base64 = false,
        prompt_for_file_name = false,
        drag_and_drop = {
          insert_mode = true,
        },
        -- required for Windows users
        -- use_absolute_path = true,
      },
    },
    keys = {
      -- stylua: ignore
      { "<leader>i", "<cmd>PasteImage<cr>", desc = "Paste image from system clipboard" },
    },
    ft = { "markdown" },
  },
}
