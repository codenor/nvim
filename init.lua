require "config.options"
require "config.colorscheme"
require "config.remap"
require "config.packer"
--require "config.cpphelper"

-- VimTeX configurations
vim.g.vimtex_view_method = 'zathura'
vim.g.vimtex_quickfix_mode = 0  -- Disable quickfix for Zathura

--vim.api.nvim_set_keymap('n', '<Leader>ll', ':VimtexCompile<CR>', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '<Leader>lv', ':VimtexView<CR>', { noremap = true, silent = true })vim.api.nvim_set_keymap('n', '<Space>tv', ':VimtexView<CR>', { noremap = true, silent = true })
