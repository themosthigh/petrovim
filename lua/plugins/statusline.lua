local icons = require("builtin.icons")


local function macro_recording()
  local recording_register = vim.fn.reg_recording()
  if recording_register == "" then
    return ""
  else
    return "Recording @" .. recording_register
  end
end

return {
  {
    -- Lualine
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",

    config = function()
      local config = {
        options = {
          theme = "auto",
          icons_enabled = true,
          disabled_filetypes = {
            statusline = {},
            winbar = {},
          },
          ignore_focus = {},
          always_divide_middle = false,
          globalstatus = true,
          refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
          },
          component_separators = icons.ui.LineMiddle,
          -- section_separators = { left = icons.ui.CircleDividerRight, right = icons.ui.CircleDividerLeft },
          section_separators = { left = "", right = "" }, -- remove separators
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch", "diff" },
          lualine_c = { { "filename", file_status = true, path = 1 } },
          lualine_x = { macro_recording, "filetype" },
          lualine_y = { "diagnostics", "lsp_status" },
          lualine_z = { "location", "progress" },
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { "filename" },
          lualine_x = { "location" },
          lualine_y = {},
          lualine_z = {},
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = {},
      }

      require("lualine").setup(config)
    end,
  },
}
