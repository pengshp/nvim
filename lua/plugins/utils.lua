return {
  -- Run code.
  {
    "CRAG666/code_runner.nvim",
    event = "LspAttach",
    opts = {
      mode = "toggleterm",
      filetype = {
        lua = "nvim -l",
        markdown = "glow",
        python = "python -u",
        go = "go run",
      },
    },
    keys = {
      -- stylua: ignore
      -- Alt-r
      { "<M-r>", function() require("code_runner.commands").run_filetype() end, desc = "Run file" },
    },
    cmd = { "RunCode", "RunFile", "RunProject" },
  },

  -- css colorizer.
  {
    "NvChad/nvim-colorizer.lua",
    ft = { "css", "cfg", "conf", "lua", "rasi" },
    opts = {
      filetypes = { "*" },
      user_default_options = {
        RRGGBBAA = false, -- #RRGGBBAA hex codes
        AARRGGBB = false, -- 0xAARRGGBB hex codes
        names = false, -- "Name" codes
        css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
        -- Available modes for `mode`: foreground, background,  virtualtext
        mode = "background", -- Set the display mode.
        -- Available methods are false / true / "normal" / "lsp" / "both"
        -- True is same as normal
        tailwind = false, -- Enable tailwind colors
        -- parsers can contain values used in |user_default_options|
        sass = { enable = false, parsers = { "css" } }, -- Enable sass colors
        virtualtext = "■",
        -- update color values even if buffer is not focused
        -- example use: cmp_menu, cmp_docs
        always_update = false,
      },
      -- all the sub-options of filetypes apply to buftypes
      buftypes = {},
    },
  },
  -- Fcitx5 config
  {
    "pysan3/fcitx5.nvim",
    event = "ModeChanged",
    cond = vim.fn.executable("fcitx5-remote") == 1,
    opts = {
      imname = {
        norm = "keyboard-us",
        -- ins = "keyboard-us", --pinyin
        cmd = "keyboard-us",
        vis = "keyboard-us",
        term = "keyboard-us",
      },
      remember_prior = true,
      define_autocmd = false,
    },
  },

  -- terminal
  {
    "akinsho/toggleterm.nvim",
    event = "ColorScheme",
    cmd = "ToggleTerm",
    keys = {
      { "<F5>", "<cmd>ToggleTerm<cr>", desc = "ToggleTerm" },
    },
    config = function()
      -- local highlights = require("rose-pine.plugins.toggleterm")
      require("toggleterm").setup({
        -- highlights = highlights,
        open_mapping = [[<F5>]],
        size = 10,
        direction = "horizontal",
        shell = "zsh",
      })
    end,
    enable = true,
  },
  {
    "soulis-1256/eagle.nvim",
    event = "LspAttach",
    config = true,
  },
  {
    "Exafunction/codeium.nvim",
    -- enable = false,
    opts = {
      detect_proxy = true,
      enable_chat = false,
    },
  },
}
