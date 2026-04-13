-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local options = {
  shiftwidth = 4,
  tabstop = 4,
  softtabstop = 4,
  autoindent = true,
  shiftround = true,
  expandtab = false,
  autoread = true,
  swapfile = false,
  backup = false,
  spelllang = "en_us,cjk",
  spelloptions = "camel",
  -- winborder = "rounded",
}

for key, val in pairs(options) do
  vim.opt[key] = val
end

-- GUI neovide config
if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  vim.o.guifont = "SFMono Nerd Font Mono:h16" -- text below applies for VimScript

  vim.g.neovide_opacity = 0.8
  vim.g.neovide_normal_opacity = 0.8
end
