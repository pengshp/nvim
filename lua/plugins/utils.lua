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
    enabled = true,
  },
  {
    "willothy/wezterm.nvim",
    cmd = "WeztermSpawn",
    config = true,
  },
  -- Show diagnostics and lsp info inside a custom window, following the mouse position
  {
    "soulis-1256/eagle.nvim",
    event = "LspAttach",
    config = true,
  },
  {
    "Exafunction/codeium.nvim",
    event = "BufReadPost",
    enabled = false,
    opts = {
      enterprise_mode = false,
      detect_proxy = true,
      enable_chat = false,
    },
  },
}
