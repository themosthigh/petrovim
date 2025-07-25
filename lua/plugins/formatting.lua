-- Use a sub-list to run only the first available formatter
local pretty = {
  "prettierd",
  "prettier",
  stop_after_first = true,
  lsp_format = "format"
}


return {
  {
    'stevearc/conform.nvim',
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          lua = {},
          javascript = pretty,
          typescript = pretty,
          html = pretty,
          css = pretty,
        },
        -- format_on_save = {
        --   -- These options will be passed to conform.format()
        --   timeout_ms = 500,
        --   lsp_format = "fallback",
        -- },
      })
    end
  }
}
