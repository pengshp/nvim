return {
  -- Run code.
  {
    "CRAG666/code_runner.nvim",
    event = "LspAttach",
    opts = {
      mode = "float",
      filetype = {
        lua = "nvim -l",
        markdown = "glow",
        python = "python -u",
        go = "go run",
        sh = "bash",
      },
    },
    keys = {
      -- stylua: ignore
      -- Alt-r
      { "<A-r>", function() require("code_runner.commands").run_filetype() end, desc = "Run file" },
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
  {
    "willothy/wezterm.nvim",
    cmd = "WeztermSpawn",
    config = true,
  },
}
