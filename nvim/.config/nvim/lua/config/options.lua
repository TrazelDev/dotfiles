-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Tabs in your code:
vim.opt.expandtab = false -- use real tabs, not spaces
vim.opt.tabstop = 4 -- how many spaces a tab visually equals
vim.opt.shiftwidth = 4 -- indentation width for << and >>
vim.opt.softtabstop = 4 -- how many spaces a tab feels like when editing
vim.opt.autoindent = true -- Automatically indent new lines
vim.opt.smartindent = true -- Smart indentation for C-like languages (optional, but good)

-- Line for how long can your code get:
vim.opt.colorcolumn = "80"

-- Make sure that you do not type on your last line but it stops 8 lines above:
vim.opt.scrolloff = 8
