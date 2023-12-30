return {
  {
    "williamboman/mason-lspconfig.nvim",
  },
  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      keys[#keys + 1] = { "<C-Space>", false }
    end,
    -- @class PluginLspOpts
    opts = {
      -- @type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
        pylsp = {
          settings = {},
          plugins = {
            ruff = {
              enabled = true, -- Enable the plugin
              executable = "/usr/bin/ruff", -- Custom path to ruff
              -- path = "",  -- Custom config for ruff to use
              extendSelect = { "I" }, -- Rules that are additionally used by ruff
              extendIgnore = { "C90" }, -- Rules that are additionally ignored by ruff
              format = { "I" }, -- Rules that are marked as fixable by ruff that should be fixed when running textDocument/formatting
              severities = { ["D212"] = "I" }, -- Optional table of rules where a custom severity is desired
              unsafeFixes = false, -- Whether or not to offer unsafe fixes as code actions. Ignored with the "Fix All" action

              -- Rules that are ignored when a pyproject.toml or ruff.toml is present:
              lineLength = 88, -- Line length to pass to ruff checking and formatting
              exclude = { "__about__.py" }, -- Files to be excluded by ruff checking
              select = { "F" }, -- Rules to be enabled by ruff
              ignore = { "D210" }, -- Rules to be ignored by ruff
              perFileIgnores = { ["__init__.py"] = "CPY001" }, -- Rules that should be ignored for specific files
              preview = false, -- Whether to enable the preview style linting and formatting.
              targetVersion = "py310", -- The minimum python version to target (applies for both linting and formatting).
            },
          },
        },
        bashls = {
          filetypes = { "sh" },
          settings = {
            bashIde = {
              globPattern = "*@(.sh|.inc|.bash|.command)",
            },
            explainshellEndpoint = "https://shell.esxi.lan/",
          },
          single_file_support = true,
        },
        lua_ls = {
          settings = {
            Lua = {
              workspace = {
                checkThirdParty = false,
              },
              telemetry = { enable = false },
              completion = {
                callSnippet = "Replace",
              },
            },
          },
        },
        gopls = {
          -- don't want this server to be installed with mason
          mason = false,
          cmd = { "gopls", "serve" },
          filetypes = { "go", "gomod", "gowork", "gotmpl" },
          single_file_support = true,
        },
        taplo = {},
        dockerls = {},
        jsonls = {},
        marksman = {},
      },
    },
  },
}
