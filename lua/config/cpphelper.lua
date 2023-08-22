-- Function to generate C++ class
function generateCppClass(className, classPath)
    -- Editing header file
    local header = classPath .. "/" .. className .. ".h"
    vim.cmd("silent e " .. header)
    vim.api.nvim_buf_set_lines(0, 0, -1, false, {
        "#pragma once",
        " ",
        "class " .. className,
        "{",
        "   public:",
        "      " .. className .. "();",
        "      virtual ~" .. className .. "();",
        "   protected:",
        "   private:",
        "};",
    })
    vim.cmd("write")

    -- Editing source file
    local src = classPath .. "/" .. className .. ".cpp"
    vim.cmd("silent e " .. src)
    vim.api.nvim_buf_set_lines(0, 0, -1, false, {
        "#include \"" .. className .. ".h\"",
        " ",
        className .. "::" .. className .. "()",
        "{",
        " ",
        "}",
        " ",
        " ",
        className .. "::~" .. className .. "()",
        "{",
        " ",
        "}",
    })
    vim.cmd("write")
end

-- Keybinding to generate C++ class in the current nvim-tree directory
vim.api.nvim_set_keymap('n', '<S-c>', ':lua generateCppClass(vim.fn.input("Enter Class Name > "), vim.fn.expand("%:p:h"))<CR>', { noremap = true, silent = true })


vim.api.nvim_set_keymap('n', '<leader>cc', ':lua generateCppClass(vim.fn.input("Enter Class Name > "), vim.fn.expand("%:p:h"))<CR>', { noremap = true, silent = true })
