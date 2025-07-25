-- DEV Dependency management

return {
  -- Mason
  {
    "mason-org/mason.nvim",
    opts = {},
  },

  -- Mason lspconfig
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
    opts = {
      automatic_enabled = true,
      automatic_intallation = true,
      -- preload any lsp servers you want to use here
      ensure_installed = require("config.language-tools").ensure_installed,
    }
  },
}
