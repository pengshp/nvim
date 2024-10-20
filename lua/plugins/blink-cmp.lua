return {
  { "hrsh7th/nvim-cmp", enabled = false },
  {
    "saghen/blink.cmp",
    event = "BufReadPost",
    -- lazy = false, -- lazy loading handled internally
    -- optional: provides snippets for the snippet source
    dependencies = "rafamadriz/friendly-snippets",

    -- use a release tag to download pre-built binaries
    version = "v0.*",
    opts = {
      highlight = {
        use_nvim_cmp_as_default = true,
      },
      -- set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
      -- adjusts spacing to ensure icons are aligned
      nerd_font_variant = "mono",

      -- experimental auto-brackets support
      -- accept = { auto_brackets = { enabled = true } }

      -- experimental signature help support
      trigger = { signature_help = { enabled = true } },
      keymap = {
        show = "<C-i>",
        show_documentation = "<C-i>",
        hide_documentation = "<C-i>",
        scroll_documentation_down = "<PageDown>",
        scroll_documentation_up = "<PageUp>",
      },
      windows = {
        autocomplete = {
          border = "none",
        },
      },
    },
  },
}
