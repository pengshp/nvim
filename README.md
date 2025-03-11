# LazyVim

<!--toc:start-->

- [LazyVim](#lazyvim)
- [Themes](#themes)
- [Usage](#usage)
- [Features](#features)
- [LSP and Treesitter](#lsp-and-treesitter)
- [Code completion](#code-completion)
- [Reference](#reference)
  <!--toc:end-->

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Themes

- ~~rose-pine/neovim~~
- catppuccin/nvim

## Usage

```bash
git clone https://github.com/pengshp/nvim.git ~/.config/nvim
nvim
```

## Features

| Plugin                     | Desc                                               |
| -------------------------- | -------------------------------------------------- |
| chrisgrieser/nvim-scissors | Automagical editing and creation of snippets.      |
| pysan3/fcitx5.nvim         | switch and restore fcitx state for each buffer.    |
| HakonHarnes/img-clip.nvim  | Effortlessly embed images into any markup language |

## LSP and Treesitter

| Language   | LSP         | Treesitter |
| ---------- | ----------- | ---------- |
| python     | pylsp       | python     |
| lua        | lua_ls      | lua        |
| golang     | gopls       | go         |
| dockerfile | dockerls    | dockerfile |
| bash       | bashls      | bash       |
| yaml       | yamlls      | yaml       |
| json       | jsonls      | json,jsonc |
| toml       | taplo       | toml       |
| sql        | sqlls       | sql        |
| markdown   | marksman    | markdown   |
| terraform  | terraformls | hcl        |
| kcl        | kcl         |            |
| ansible    | ansiblels   | yaml       |

## Code completion

~~hrsh7th/nvim-cmp~~

[Saghen/blink.cmp](https://github.com/Saghen/blink.cmp)

## Reference

1. [Treesitter](https://tree-sitter.github.io/tree-sitter/)
2. [LazyVim](https://www.lazyvim.org/)
3. [LSP](https://microsoft.github.io/language-server-protocol/)
4. [Neovim](https://github.com/neovim/neovim)
5. [Lazy.nvim](https://github.com/folke/lazy.nvim)
6. [Mason](https://github.com/williamboman/mason.nvim)

<p align="center"><img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" /></p>
<p align="center">Copyright &copy; 2023 - present <a href="https://www.nealinux.com" target="_blank"> Neal Peng<a> 🍃</a>
