return {
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
}
