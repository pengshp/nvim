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
    vim.opt.filetype = "yaml.docker-compose"
  end,
})

vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
  pattern = { "*.yml", "*.yaml" },
  group = ft_lsp_group,
  desc = "Fix the issue where the LSP don't start with ansible.",
  callback = function()
    if vim.fn.findfile("ansible.cfg", ".") then
      vim.opt.filetype = "yaml.ansible"
    end
  end,
})

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
