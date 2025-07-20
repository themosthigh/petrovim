-- Syntax tree context and highlighting


return {
  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup {
        auto_install = true,
        indent = { enable = true },
      }
    end
  }
}
