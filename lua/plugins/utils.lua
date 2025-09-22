return {
  -- Fcitx5 config
  --[[
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
      define_autocmd = true,
    },
  },
  ]]
  {
    "keaising/im-select.nvim",
    config = function()
      require("im_select").setup({
        default_im_select = "keyboard-us",
        default_command = "fcitx5-remote",
        set_default_events = { "InsertLeave", "CmdlineLeave" },
        set_previous_events = { "InsertEnter" },
        keep_quiet_on_no_binary = false,
        async_switch_im = true,
      })
    end,
  },
}
