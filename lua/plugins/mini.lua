return {
  {
    "echasnovski/mini.nvim",
    dependencies = { 'echasnovski/mini.icons', version = false },
    version = "*",
    config = function()
      -- HIGHLIGHT WORD UNDER CURSOR
      require("mini.cursorword").setup()

      -- AUTOPAIRS
      require('mini.pairs').setup()


      -- Icons by MINI
      require("mini.icons").setup()
    end,
  },
}
