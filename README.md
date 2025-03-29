# My Neovim Config
This is my custom Neovim setup, built with Lua, designed to improve my workflow and productivity. It offers exceptional speed, outperforming other IDEs I have used, and is highly customizable to meet my specific needs and preferences. The configuration supports LSP, Treesitter, formatting, and debugging for Shell, Lua, JavaScript, TypeScript, PHP, and Java. It's also easy to add support for more languages and features as needed.

## Preview
Here’s a preview of what my Neovim setup looks like in action:

<p align="center">
  <img src="https://github.com/user-attachments/assets/22bdec48-805d-411e-ba1d-8ca2d39be30b" alt="image 1" width="45%" style="margin-right: 5%;">
  <img src="https://github.com/user-attachments/assets/df7aa2e9-77db-4091-b02e-eb7fdaa531f5" alt="image 2" width="45%">
</p>

## Installation
To install my Neovim configuration, simply clone the repository and symlink it to your Neovim config directory:
```sh
git clone https://github.com/ndy-s/nvim-config.git ~/.config/nvim
```
This will ensure that your Neovim setup is configured with my custom settings, plugins, and keymaps.

## Setup & Plugins

For full keymaps reference: [My Neovim Notes](https://github.com/ndy-s/nvim-config/blob/main/docs/nvim-notes.md)

### Plugin Highlights

#### Plugin Manager:
- `lazy.nvim`

#### UI:
- `alpha-nvim` (dashboard)
- `lualine.nvim` (statusline)
- `sonokai` (colorscheme)
- `nvim-web-devicons`
- `which-key.nvim`
- `telescope.nvim`
- `telescope-ui-select.nvim`

#### Navigation:
- `harpoon`
- `neo-tree.nvim`
- `nvim-window-picker`

#### LSP:
- `nvim-lspconfig`
- `lspkind.nvim`
- `mason.nvim`
- `mason-lspconfig.nvim`
- `mfussenegger/nvim-jdtls` (Java LSP)
- `none-ls.nvim`

#### Formatter & Tools:
- `mason-tool-installer.nvim` installs:
    - `shfmt`, `shellcheck`
    - `stylua`, `luacheck`
    - `eslint_d`
    - `pint`, `phpstan`, `blade-formatter`
    - `google-java-format`

#### Completion & Snippets:
- `nvim-cmp`
- `cmp-buffer`, `cmp-nvim-lsp`, `cmp-nvim-lua`, `cmp-path`
- `cmp_luasnip`
- `LuaSnip`, `friendly-snippets`

#### Framework Support:
- `laravel.nvim`
- `blade-nav.nvim`

#### Debugger:
- `nvim-dap` (core)
- `nvim-dap-ui` (UI)
- `nvim-nio`
- PHP: `xdebug/vscode-php-debug`
- Java: `java-debug-adapter`

#### Others:
- `plenary.nvim`
- `vim-be-good`
- `undotree`
- `vim-dotenv`
- `mini.hipatterns`
- `Comment.nvim`
- `nvim-autopairs`

## FAQ
How do I update this config? Simply pull the latest changes from the repository:
```sh
git pull origin main
```
