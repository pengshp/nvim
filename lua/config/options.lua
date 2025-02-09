-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local options = {
  shiftwidth = 4,
  tabstop = 4,
  softtabstop = 4,
  conceallevel = 0,
  smartindent = true,
  autoindent = false,
  shiftround = true,
  expandtab = true,
  autoread = true,
  swapfile = false,
  backup = false,
  spelllang = "en_us,cjk",
  spelloptions = "camel",
}

for key, val in pairs(options) do
  vim.opt[key] = val
end

-- GUI neovide config
if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  vim.o.guifont = "SFMono Nerd Font Mono:h22" -- text below applies for VimScript

  -- Helper function for transparency formatting
  local alpha = function()
    return string.format("%x", math.floor((255 * vim.g.transparency) or 0.8))
  end
  -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
  vim.g.neovide_transparency = 0.0
  vim.g.transparency = 0.8
  vim.g.neovide_background_color = "#0f1117" .. alpha()

  vim.g.neovide_transparency = 0.8
end
