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

-- Ansible
-- Create an autocommand for "BufRead" events
vim.api.nvim_create_autocmd("BufRead", {
  -- This autocommand will only trigger if the buffer name matches the following patterns
  pattern = { "*.yaml", "*.yml" },
  -- The autocommand will trigger the following lua function
  callback = function()
    -- In lua, `[[ ... ]]` is a literal string. If i used double quotes
    -- instead, then next line would look like this:
    --
    -- `if vim.fn.search("hosts:\\|tasks:", "nw") then`
    --
    -- Notice how i had to escape the backslash
    if vim.fn.search([[hosts:\|tasks:]], "nw") then
      -- Thi uses Neovim's options api. Alternatively, you could do this:
      --
      -- `vim.cmd("set filetype = yaml.ansible")`
      vim.opt.filetype = "yaml.ansible"
    end
  end,
})
