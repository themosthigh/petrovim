-- turn on inline diagnostics
vim.diagnostic.config({ virtual_text = true })

return {
  {
    "folke/trouble.nvim",
    event = "VeryLazy",
    opts = {}
  },
}
