-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
-- Use LspAttach autocmd to only map the following keys
-- after the language server attaches to the current buffer.
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local opts = { buffer = ev.buf }
    vim.keymap.set("n", "<leader>v", "<cmd>vsplit | lua vim.lsp.buf.definition()<CR>", opts)
  end,
})

local ft_lsp_group = vim.api.nvim_create_augroup("ft_lsp_group", { clear = true })
vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
  pattern = { "docker-compose.yaml", "compose.yaml" },
  group = ft_lsp_group,
  desc = "Fix the issue where the LSP does not start with docker-compose.",
  callback = function()
    vim.bo.filetype = "yaml.docker-compose"
  end,
})
-- TODO: fix issue.
--
--[[
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "yml", "yaml" },
  group = ft_lsp_group,
  desc = "Fix the issue where the LSP don't start with ansible.",
  callback = function()
    if vim.fn.findfile("ansible.cfg", vim.fn.getcwd(0)) then
      vim.opt.filetype = "yaml.ansible"
      vim.notify("ansiblels starts successfully", "INFO")
    else
      vim.opt.filetype = "yaml"
      vim.notify("ansible.cfg not found!", "warn")
    end
  end,
})
--]]
-- 根据文件类型（filetype)，来自动切换拼写检查功能
local spell_group = vim.api.nvim_create_augroup("spell_group", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "lua", "python", "go" },
  command = "setlocal spell spelllang=en_us,cjk",
  group = spell_group,
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown" },
  command = "setlocal nospell",
  group = spell_group,
})
vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*", -- disable spellchecking in the embeded terminal
  command = "setlocal nospell",
  group = spell_group,
})

-- Simple LSP Progress
vim.api.nvim_create_autocmd("LspProgress", {
  ---@param ev {data: {client_id: integer, params: lsp.ProgressParams}}
  callback = function(ev)
    local spinner = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }
    vim.notify(vim.lsp.status(), "info", {
      id = "lsp_progress",
      title = "LSP Progress",
      opts = function(notif)
        notif.icon = ev.data.params.value.kind == "end" and " "
          or spinner[math.floor(vim.uv.hrtime() / (1e6 * 80)) % #spinner + 1]
      end,
    })
  end,
})
