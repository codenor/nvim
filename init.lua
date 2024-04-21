require "config.options"
require "config.colorscheme"
require "config.remap"
require "config.packer"
require "config.cpphelper"
require "config.bwpost"

--I was having some problem reading the line numbers
vim.api.nvim_set_hl(0, 'LineNr', { fg = "lightgray"})
vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = "lightgray"})
vim.opt.autoindent = true
