return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        -- "pylsp",
        "basedpyright",
        "bashls",
        "gopls",
        "dockerls",
        "jsonls",
        "taplo",
        "yamlls",
        "marksman",
        "terraformls",
      },
      -- automatic_installation = { exclude = { "gopls" } },
    },
  },
  {
    "neovim/nvim-lspconfig",
    -- @class PluginLspOpts
    opts = {
      -- @type lspconfig.options
      servers = {
        bashls = {
          filetypes = { "bash", "sh" },
          settings = {
            bashIde = {
              globPattern = "*@(.sh|.inc|.bash|.command)",
            },
          },
          single_file_support = true,
        },
        lua_ls = {
          settings = {
            Lua = {
              workspace = {
                checkThirdParty = false,
              },
              completion = {
                callSnippet = "Disable",
              },
              codeLens = { enable = true },
              diagnostics = {
                globals = { "vim" },
              },
              forman = { enable = false },
              hint = {
                enable = true,
              },
            },
          },
        },
        gopls = {
          -- don't want this server to be installed with mason
          mason = true,
          cmd = { "gopls", "serve" },
          filetypes = { "go", "gomod", "gowork", "gotmpl" },
          single_file_support = true,
        },
        ansiblels = {
          mason = true,
          cmd = { "ansible-language-server", "--stdio" },
          filetypes = { "yaml.ansible" },
          settings = {
            ansible = {
              ansible = {
                path = "ansible",
              },
              executionEnvironment = {
                enabled = false,
              },
              python = {
                interpreterPath = "python",
              },
              validation = {
                enabled = true,
                lint = {
                  enabled = true,
                  path = "ansible-lint",
                },
              },
            },
          },
          single_file_support = true,
        },
        taplo = {
          filetypes = { "toml" },
          -- IMPORTANT: this is required for taplo LSP to work in non-git repositories
          root_dir = require("lspconfig.util").root_pattern("*.toml", ".git"),
        },
        dockerls = {},
        jsonls = {
          settings = {
            json = {
              schemas = require("schemastore").json.schemas(),
              validate = { enable = true },
            },
          },
        },
        yamlls = {
          settings = {
            yaml = {
              schemas = require("schemastore").yaml.schemas(),
              validate = { enable = true },
              yamlVersion = 1.2,
              format = { enable = true },
              hover = true,
              completion = true,
            },
            redhat = { telemetry = { enabled = false } },
          },
        },
      },
    },
  },
}
