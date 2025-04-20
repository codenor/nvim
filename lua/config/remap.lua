-- Leader Key

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
vim.keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
vim.keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Map <Leader>h to ClangdSwitchSourceHeader
vim.api.nvim_set_keymap("n", "<Leader>h", ":ClangdSwitchSourceHeader<CR>", { noremap = true, silent = true })

-- Moving lines up and down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("i", "<C-c>", "<Esc>")

-- Navigation
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Disable arrow keys and print message hint
vim.keymap.set("n", "<Left>", ":echo 'Use h instead!'<CR>", opts)
vim.keymap.set("n", "<Right>", ":echo 'Use l instead!'<CR>", opts)
vim.keymap.set("n", "<Up>", ":echo 'Use k instead!'<CR>", opts)
vim.keymap.set("n", "<Down>", ":echo 'Use j instead!'<CR>", opts)

-- Disable arrow keys and print message hint
vim.keymap.set("i", "<Left>", "<ESC>:echo 'Use h instead!'<CR>a", opts)
vim.keymap.set("i", "<Right>", "<ESC>:echo 'Use l instead!'<CR>a", opts)
vim.keymap.set("i", "<Up>", "<ESC>:echo 'Use k instead!'<CR>a", opts)
vim.keymap.set("i", "<Down>", "<ESC>:echo 'Use j instead!'<CR>a", opts)

-- vim.keymap.set("i", "jk", "<ESC>", opts)

-- Centering
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")

vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { desc = "set [X]ecutable", silent = true })
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "[F]ind projects" })
-- Disable ESLint LSP server and hide virtual text in Neovim
-- Add this to your init.lua or init.vim file
local isLspDiagnosticsVisible = true
vim.keymap.set("n", "<leader>lx", function()
	isLspDiagnosticsVisible = not isLspDiagnosticsVisible
	vim.diagnostic.config({
		virtual_text = isLspDiagnosticsVisible,
		underline = isLspDiagnosticsVisible,
	})
end)

-- Buffer Navigation
vim.keymap.set("n", "<leader>bb", "<Cmd>BufferOrderByBufferNumber<CR>", { desc = "[B]uffer sort by [B]uffer number" })
vim.keymap.set("n", "<leader>bn", "<Cmd>BufferOrderByName<CR>", { desc = "[B]uffer sort by [N]ame" })
vim.keymap.set("n", "<leader>bd", "<Cmd>BufferOrderByDirectory<CR>", { desc = "[B]uffer sort by [D]irectory" })
vim.keymap.set("n", "<leader>bl", "<Cmd>BufferOrderByLanguage<CR>", { desc = "[B]uffer sort by [L]anguage" })
vim.keymap.set("n", "<leader>bw", "<Cmd>BufferOrderByWindowNumber<CR>", { desc = "[B]uffer sort by [W]indow number" })

-- Buffer Pick Mode
vim.keymap.set("n", "<leader>bp", "<Cmd>BufferPick<CR>", { desc = "[B]uffer [P]ick mode" })
vim.keymap.set("n", "<leader>bP", "<Cmd>BufferPickDelete<CR>", { desc = "[B]uffer [P]ick + delete" })

-- Buffer Close Commands
vim.keymap.set("n", "<leader>bc", "<Cmd>BufferClose<CR>", { desc = "[B]uffer [C]lose current" })
vim.keymap.set("n", "<leader>bo", "<Cmd>BufferCloseAllButCurrent<CR>", { desc = "[B]uffer close [O]thers" })
vim.keymap.set(
	"n",
	"<leader>bx",
	"<Cmd>BufferCloseAllButCurrentOrPinned<CR>",
	{ desc = "[B]uffer close all but current or pinned" }
)
vim.keymap.set("n", "<leader>bu", "<Cmd>BufferCloseAllButPinned<CR>", { desc = "[B]uffer close [U]npinned" })
vim.keymap.set("n", "<leader>bh", "<Cmd>BufferCloseBuffersLeft<CR>", { desc = "[B]uffer close to the [H]left" })
vim.keymap.set("n", "<leader>br", "<Cmd>BufferCloseBuffersRight<CR>", { desc = "[B]uffer close to the [R]ight" })

-- Buffer Pin
vim.keymap.set("n", "<leader>b.", "<Cmd>BufferPin<CR>", { desc = "[B]uffer [.] Toggle pin" })
vim.keymap.set("n", "<leader>bgp", "<Cmd>BufferGotoPinned<CR>", { desc = "[B]uffer [G]oto [P]inned" })
vim.keymap.set("n", "<leader>bgu", "<Cmd>BufferGotoUnpinned<CR>", { desc = "[B]uffer [G]oto [U]npinned" })

-- Bonus: Reorder Buffers
vim.keymap.set("n", "<leader>b<", "<Cmd>BufferMovePrevious<CR>", { desc = "[B]uffer move [<]-left" })
vim.keymap.set("n", "<leader>b>", "<Cmd>BufferMoveNext<CR>", { desc = "[B]uffer move [>]-right" })
