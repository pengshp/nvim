return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "basedpyright",
        "bashls",
        "gopls",
        "docker_language_server",
        "jsonls",
        "tombi",
        "yamlls",
        "terraformls",
      },
      automatic_enable = {
        exclude = {
          "taplo",
        },
      },
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
              format = { enable = false },
              hint = {
                enable = true,
              },
            },
          },
        },
        taplo = { enabled = false },
        dockerls = { enabled = false },
        docker_compose_language_service = { enabled = false },
        gopls = {
          -- don't want this server to be installed with mason
          mason = true,
          cmd = { "gopls", "serve" },
          filetypes = { "go", "gomod", "gowork", "gotmpl" },
          single_file_support = true,
        },
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
