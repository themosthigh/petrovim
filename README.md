<img width="2660" height="1702" alt="image" src="https://github.com/user-attachments/assets/330822a3-d952-4541-a267-1fefb5601638" />


# PETROVIM

Peter's Neovim config with support for :

- Developer tools management
- AI, LSP and Snippets completions
- Git integration
- Inbuilt terminal
- Shortcuts with [which-key.nvim](https://github.com/folke/which-key.nvim)


## Adding new language servers

A quick and easy way to do this is by editing `config/language-tools.lua` and adding the language server to the `ensure_installed` table.

Installing new servers via the `:Mason` command is should also `auto_enable` it.


## Formatting

See the `plugins/formatting.lua` file for the list of formatters that are supported. You can also enable format on save.

