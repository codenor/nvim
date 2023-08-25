-- Function to generate C++ class
-- Function to generate C++ class
function generateCppClass(className, classPath)
    -- Editing header file
    local header = classPath .. "/" .. className .. ".h"
    local headerFile = assert(io.open(header, "w"))
    local headerContent =
        [[
   #pragma once

   class ]] .. className .. [[
   {
   public:
      ]] .. className .. [[();
      virtual ~]] .. className .. [[();
   protected:
   private:
   };
  ]]
    headerFile:write(headerContent)
    headerFile:close()

    -- Editing source file
    local src = classPath .. "/" .. className .. ".cpp"
    local srcFile = assert(io.open(src, "w"))
    local srcContent =
        [[
   #include "]] .. className .. [[.h"

   ]] .. className .. [[::]] .. className .. [[()
   {
   }

   ]] .. className .. [[::~]] .. className .. [[()
   {
   }
  ]]
    srcFile:write(srcContent)
    srcFile:close()
end -- Keybinding to generate C++ class in the current nvim-tree directory

vim.api.nvim_set_keymap('n', '<leader>cc',
    ':lua generateCppClass(vim.fn.input("Enter Class Name > "), vim.fn.expand("%:p:h"))<CR>',
    { noremap = true, silent = true })
