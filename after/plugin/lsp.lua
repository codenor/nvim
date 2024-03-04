-- lsp-config.lua

-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero').preset({
    name = 'minimal',
    set_lsp_keymaps = true,
    manage_nvim_cmp = true,
    suggest_lsp_servers = false,
})

lsp.format_mapping('gq', {
    format_opts = {
        async = false,
        timeout_ms = 10000,
    },
    servers = {
        ['null-ls'] = { 'javascript', 'typescript', 'lua', 'css' , 'html'},
    }
})

lsp.setup()
-- Make sure you setup `cmp` after lsp-zero

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

local ls = require 'luasnip'

-- function to load snippets for file types
local function load_snippets_for_ft(filetype)
    local ft_table = { filetype }
    if filetype == 'php' then
        table.insert(ft_table, 'html')
    end
    ls.filetype_extend(filetype, ft_table)
end

-- load_snippets_for_ft for PHP
load_snippets_for_ft('php')

require('luasnip.loaders.from_vscode').lazy_load()
cmp.setup({
    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip', option = { show_autosnippets = true } },
    },
    mapping = {
        ['<C-f>'] = cmp_action.luasnip_jump_forward(),
        ['<C-b>'] = cmp_action.luasnip_jump_backward(),
    }
})

local null_ls = require('null-ls')
local null_opts = lsp.build_options('null-ls', {})

null_ls.setup({
    on_attach = function(client, bufnr)
        null_opts.on_attach(client, bufnr)
        ---
        -- you can add other stuff here....
        ---
    end,
    sources = {
        -- Replace these with the tools you have installed
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.formatting.stylua,
    }
})
