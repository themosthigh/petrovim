-- Language Server Configuration support
return {
  -- LSP
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- local lspconfig = require("lspconfig")
      -- Enable specific servers here
      -- lspconfig.lua_ls.setup {}
      -- lspconfig.intellephense.setup {}
      -- lspconfig.biome.setup {}
    end,
  },


  -- Code actions
  {
    "rachartier/tiny-code-action.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "folke/snacks.nvim",    opts = { terminal = {} } }
    },
    event = "LspAttach",
    opts = {
      picker = {
        "snacks"
      }
    }
  }
}
