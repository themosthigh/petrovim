return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require("telescope").setup({
      defaults = {
        layout_strategy = "horizontal",
        layout_config = {
          horizontal = {
            prompt_position = "top",
          },
        },
        sorting_strategy = "ascending",
      },

      pickers = {
        colorscheme = {
          enable_preview = true
        }
      }
    })
  end
}
