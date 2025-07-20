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
    lazy = true,
    event = "User FileOpened",
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
    opts = {
      automatic_enabled = true,
      automatic_installation = true,
      -- preload any lsp servers you want to use here
      ensure_installed = { "lua-language-server" },
    },
  },
}
