# My 2026 Neovim Configuration

## System Requirements

This configuration requires the following tools to be installed on your host system:

* **Neovim v0.11 or newer**
* **C Compiler:** (Required for Tree-sitter) `gcc`.
* **Git:** For plugin management via Packer.

## Installation and Order of Operations

To avoid "Module not found" errors, follow this specific sequence during the first installation:

1. **Clone Configuration**: Place this repository into `~/.config/nvim/`.
2. **Load Packer**: Open Neovim and navigate to `lua/packer.lua`.
3. **Source and Sync**:
   - Run `:so` to source the current file.
   - Run `:PackerSync` to download all plugins.
4. **Restart**: Exit Neovim entirely (`:q`) and reopen it.
5. **Install Servers**: Run `:Mason` and ensure your required language servers (Go, Python, Lua, etc.) are installed.

## Directory Structure and Logic

* **init.lua**: The main entry point that loads your basic settings and plugin definitions.
* **lua/packer.lua**: Contains all plugin declarations. Plugin-specific configurations are contained within `config` functions here to ensure they only run after the plugin is successfully loaded.
* **after/plugin/**: Any `.lua` files placed here are automatically sourced by Neovim at the end of the startup sequence. Use this for global keymaps and custom commands. 


## Core Components

### LSP (Native v0.11)
This config migrates away from lsp-zero and utilizes the native `vim.lsp.enable()` API for faster performance and lower memory overhead. Server management is handled via `mason.nvim`.

### Tree-sitter (Main Branch)
I'm using the 2026 rewrite of `nvim-treesitter` to provide syntax highlighting and smart indentation. The configuration is set to `auto_install = true`, so parsers will be fetched automatically when you open a new file type.

### Autocompletion
Driven by `nvim-cmp` with integration for LSP and snippets. 


```bash
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10

