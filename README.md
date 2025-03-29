# My Neovim Config
I created this setup to boost my workflow and productivity. It currently supports Shell, Lua, JavaScript, TypeScript, PHP, and Java. It's easy to customize if you need to add support for more languages or adjust it to fit your specific needs.

## Installation
To install my Neovim configuration, simply clone the repository and symlink it to your Neovim config directory:
```sh
git clone https://github.com/ndy-s/nvim-config.git ~/.config/nvim
```
This will ensure that your Neovim setup is configured with my custom settings, plugins, and keymaps.

## Preview
Here’s a preview of what my Neovim setup looks like in action:

<p align="center">
  <img src="https://github.com/user-attachments/assets/22bdec48-805d-411e-ba1d-8ca2d39be30b" alt="image 1" width="45%" style="margin-right: 5%;">
  <img src="https://github.com/user-attachments/assets/df7aa2e9-77db-4091-b02e-eb7fdaa531f5" alt="image 2" width="45%">
</p>

## Keymaps
For all default and custom keymaps that I use in my Neovim setup, refer to the [My Neovim Notes](https://github.com/ndy-s/nvim-config/blob/main/docs/nvim-notes.md).

## Plugins
Here are the plugins I use in my Neovim setup, organized by category:

### **Completion and Snippets**
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)**  
  A completion plugin for Neovim.
  
- **[cmp-buffer](https://github.com/hrsh7th/cmp-buffer)**  
  Buffer completion source for nvim-cmp.

- **[cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)**  
  LSP completion source for nvim-cmp.

- **[cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)**  
  Lua completion source for nvim-cmp.
  
- **[cmp-path](https://github.com/hrsh7th/cmp-path)**  
  Path completion source for nvim-cmp.

- **[cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)**  
  Luasnip completion source for nvim-cmp.

- **[friendly-snippets](https://github.com/rafamadriz/friendly-snippets)**  
  A collection of useful code snippets.

- **[LuaSnip](https://github.com/L3MON4D3/LuaSnip)**  
  Snippet engine for Neovim written in Lua.

### **LSP and Language Support**
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)**  
  Quickstart configurations for Neovim’s built-in LSP client.

- **[lspkind.nvim](https://github.com/onsails/lspkind.nvim)**  
  Adds icons to Neovim LSP completion items.

- **[mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)**  
  LSP server installer for Neovim.

- **[mason.nvim](https://github.com/williamboman/mason.nvim)**  
  A package manager for Neovim to install LSP servers.

- **[none-ls.nvim](https://github.com/jay-babu/none-ls.nvim)**  
  LSP support for external tools.

### **Navigation**
- **[harpoon](https://github.com/ThePrimeagen/harpoon)**  
  Easily navigate between files.

- **[neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)**  
  File explorer for Neovim.

- **[nvim-window-picker](https://github.com/s1n7ax/nvim-window-picker)**  
  Window picker for Neovim.

### **User Interface and UI Enhancements**
- **[alpha-nvim](https://github.com/goolord/alpha-nvim)**  
  A simple dashboard for Neovim.

- **[lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)**  
  A status line for Neovim.

- **[sonokai](https://github.com/sainnhe/sonokai)**  
  A vibrant color scheme for Neovim.

- **[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)**  
  Fuzzy finder for Neovim.

- **[telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim)**  
  Extension for UI selection in Telescope.

- **[which-key.nvim](https://github.com/folke/which-key.nvim)**  
  Displays available keybindings in a popup.

- **[nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)**  
  Adds file type icons to Neovim.

### **Utilities and Tools**
- **[plenary.nvim](https://github.com/nvim-lua/plenary.nvim)**  
  Lua utility functions for Neovim.

- **[vim-be-good](https://github.com/ThePrimeagen/vim-be-good)**  
  A game to learn Vim.

- **[undotree](https://github.com/mbbill/undotree)**  
  Visualize undo history.

- **[vim-dotenv](https://github.com/tpope/vim-dotenv)**  
  .env file syntax highlighting.

- **[mini.hipatterns](https://github.com/echasnovski/mini.nvim)**  
  Common patterns for Lua functions in Neovim.

### **Plugin Management**
- **[lazy.nvim](https://github.com/folke/lazy.nvim)**  
  A fast plugin manager for Neovim.

### **Framework**
- **[laravel.nvim](https://github.com/adalessa/laravel.nvim)**  
  Laravel framework specific configuration for Neovim.
  
- **[blade-nav.nvim](https://github.com/RicardoRamirezR/blade-nav.nvim)**  
  A navigation plugin.

### **Others**
- **[Comment.nvim](https://github.com/numToStr/Comment.nvim)**  
  Provides easy commenting functionality.

- **[nvim-autopairs](https://github.com/windwp/nvim-autopairs)**  
  Automatically inserts matching brackets, parentheses, and quotes.

_And many more plugins may be added as this configuration is updated (last update: 2025-03-29)._

## FAQ
How do I update this config? Simply pull the latest changes from the repository:
```sh
git pull origin main
```
