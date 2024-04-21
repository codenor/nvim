require 'config.options'
require 'config.remap'
require 'config.lazy'

-- Map <Leader>j to move to the start of the line
vim.api.nvim_set_keymap('n', '<Leader>j', '_', { noremap = true })

-- Map <Leader>h to move to the end of the line
vim.api.nvim_set_keymap('n', '<Leader>k', '$', { noremap = true })
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.g.omni_sql_no_default_maps = 1
