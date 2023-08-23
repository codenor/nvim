# Complete Installation:

* ### Remove Previous Configuration
```shell
rm -rf ~/.local/share/nvim ~/.local/share/nvim.bak
rm -rf ~/.local/state/nvim ~/.local/state/nvim.bak
rm -rf ~/.cache/nvim ~/.cache/nvim.bak
rm -rf ~/.local/share/nvim/tree-sitter-*
```
Might be useful to move these files rather than completely removing them if you want to save your original configuration :)

* ### Actual Installation:
#### Install packer:
```shell
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
#### Install panable/nvim:
```shell
git clone https://github.com/Panable/nvim ~/.config/nvim
```

# Keybindings:

## LSP-Zero Keybindings
When a language server gets attached to a buffer you gain access to some keybindings and commands. All of these shortcuts are bound to built-in functions, so you can get more details using the `:help` command.

* `K`: Displays hover information about the symbol under the cursor in a floating window. See [:help vim.lsp.buf.hover()](https://neovim.io/doc/user/lsp.html#vim.lsp.buf.hover()).

* `gd`: Jumps to the definition of the symbol under the cursor. See [:help vim.lsp.buf.definition()](https://neovim.io/doc/user/lsp.html#vim.lsp.buf.definition()).

* `gD`: Jumps to the declaration of the symbol under the cursor. Some servers don't implement this feature. See [:help vim.lsp.buf.declaration()](https://neovim.io/doc/user/lsp.html#vim.lsp.buf.declaration()).

* `gi`: Lists all the implementations for the symbol under the cursor in the quickfix window. See [:help vim.lsp.buf.implementation()](https://neovim.io/doc/user/lsp.html#vim.lsp.buf.implementation()).

* `go`: Jumps to the definition of the type of the symbol under the cursor. See [:help vim.lsp.buf.type_definition()](https://neovim.io/doc/user/lsp.html#vim.lsp.buf.type_definition()).

* `gr`: Lists all the references to the symbol under the cursor in the quickfix window. See [:help vim.lsp.buf.references()](https://neovim.io/doc/user/lsp.html#vim.lsp.buf.references()).

* `gs`: Displays signature information about the symbol under the cursor in a floating window. See [:help vim.lsp.buf.signature_help()](https://neovim.io/doc/user/lsp.html#vim.lsp.buf.signature_help()). If a mapping already exists for this key this function is not bound.

* `<F2>`: Renames all references to the symbol under the cursor. See [:help vim.lsp.buf.rename()](https://neovim.io/doc/user/lsp.html#vim.lsp.buf.rename()).

* `<F3>`: Format code in current buffer. See [:help vim.lsp.buf.format()](https://neovim.io/doc/user/lsp.html#vim.lsp.buf.format()).

* `<F4>`: Selects a code action available at the current cursor position. See [:help vim.lsp.buf.code_action()](https://neovim.io/doc/user/lsp.html#vim.lsp.buf.code_action()).

* `gl`: Show diagnostics in a floating window. See [:help vim.diagnostic.open_float()](https://neovim.io/doc/user/diagnostic.html#vim.diagnostic.open_float()).

* `[d`: Move to the previous diagnostic in the current buffer. See [:help vim.diagnostic.goto_prev()](https://neovim.io/doc/user/diagnostic.html#vim.diagnostic.goto_prev()).

* `]d`: Move to the next diagnostic. See [:help vim.diagnostic.goto_next()](https://neovim.io/doc/user/diagnostic.html#vim.diagnostic.goto_next()).

Refer to the official documentation for the complete list of `LSP-Zero` keybindings: [LSP-Zero Keybindings Documentation](https://github.com/VonHeikemen/lsp-zero.nvim/blob/main/doc/lsp-zero.txt)

## Autocomplete

The plugin responsible for autocompletion is [nvim-cmp](https://github.com/hrsh7th/nvim-cmp). The default preset (which is called [minimal](https://github.com/VonHeikemen/lsp-zero.nvim/blob/v2.x/doc/md/api-reference.md#minimal)) will only add the minimum required to integrate lspconfig, nvim-cmp and [luasnip](https://github.com/L3MON4D3/LuaSnip).

The default keybindings in lsp-zero are meant to emulate Neovim's default whenever possible.

* `<Ctrl-y>`: Confirms selection.

* `<Ctrl-e>`: Cancel completion.

* `<Down>`: Navigate to the next item on the list.

* `<Up>`: Navigate to previous item on the list.

* `<Ctrl-n>`: If the completion menu is visible, go to the next item. Else, trigger completion menu.

* `<Ctrl-p>`: If the completion menu is visible, go to the previous item. Else, trigger completion menu.

* `<Ctrl-d>`: Scroll down the documentation window.

* `<Ctrl-u>`: Scroll up the documentation window.

## Telescope Keybindings

- `<leader>pf`: find_files
- `<C-p>`: git_files
- `<leader>ps`: grep_string (has input for grep string)

## General Keybindings

- `<leader>e`: NvimTreeToggle
- `<C-h>`: Window left
- `<C-j>`: Window down
- `<C-k>`: Window up
- `<C-l>`: Window right
- `<leader>pv`: Vim command execution
- `jk` (in Insert mode): Escape to Normal mode

## VimTeX Keybindings

- `<Leader>ll`: VimtexCompile
- `<Leader>lv`: VimtexView
- `<Space>tv`: VimtexView

