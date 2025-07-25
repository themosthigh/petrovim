return {
  -- Terminal
  "akinsho/toggleterm.nvim",
  config = function()
    local opts = {
      start_in_insert = true,
      insert_mappings = true,
      shading_factor = 2,
      hide_numbers = true,
      -- open_mapping = [[<c-\]],
      close_on_exit = true,

      float_opts = {
        border = "curved",
      },

      size = function(term)
        if term.direction == "horizontal" then
          return 15
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
      end,
    }
    require("toggleterm").setup(opts)

    -- optional support for lazygit
    -- local Terminal = require('toggleterm.terminal').Terminal
    -- local lazygit  = Terminal:new({ cmd = "lazygit", hidden = true })
    -- local function _lazygit_toggle()
    --   lazygit:toggle()
    -- end
    --
    -- vim.api.nvim_set_keymap("n", "<leader>g", _lazygit_toggle(), { noremap = true, silent = true })
  end
}
