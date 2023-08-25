vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = { "sxhkdrc" },
    command = "silent !pkill -USR1 sxhkd",
})
