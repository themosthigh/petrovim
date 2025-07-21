-- safely load which-key
local status_ok, wk = pcall(require, "which-key")
if not status_ok then
  print("which-key is not installed")
  return
end


-- Diagnostics
wk.add({
  { "<leader>d",  group = "Diagnostics" },
  { "<leader>dn", vim.diagnostic.goto_next,  desc = "Next Diagnostic" },
  { "<leader>dp", vim.diagnostic.goto_prev,  desc = "Prev Diagnostic" },
  { "<leader>df", vim.diagnostic.open_float, desc = "Float Diagnostic" },
})

-- Explorer (neo-tree)
wk.add({
  { "<leader>n", "<cmd>Neotree toggle<cr>", desc = "Explorer (toggle)" },
  { "<leader>e", "<cmd>Neotree focus<cr>",  desc = "Explorer (focus)" },
})

-- Dashboard (snacks)
wk.add({ "<leader>a", "<cmd>lua Snacks.dashboard()<cr>", desc = "Dashboard" })


-- Terminal (toggleterm)
wk.add({
  { "<leader>1", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Horizontal term" },
  { "<leader>2", "<cmd>ToggleTerm direction=vertical<cr>",   desc = "Vertical term" },
  { "<leader>3", "<cmd>ToggleTerm direction=float<cr>",      desc = "Floating term" },
})

-- Language Server
wk.add({
  { "<leader>l",  group = "LSP",                                  mode = { "n", "v" } },
  { "<leader>la", vim.lsp.buf.code_action,                        desc = "Code Action", mode = { "n", "v" } },
  -- { "<leader>la", require("tiny-code-action").code_action,        desc = "Code Action", mode = { "n", "v" } },
  { "<leader>lr", vim.lsp.buf.rename,                             desc = "Rename",      mode = { "n", "v" } },
  { "<leader>lR", "<cmd>LspRestart<cr>",                          desc = "Restart",     mode = { "n", "v" } },
  { "<leader>lf", vim.lsp.buf.format,                             desc = "Format",      mode = { "n", "v" } },
  { "<leader>ld", "<cmd>lua Snacks.picker.lsp_definitions()<cr>", desc = "Definition",  mode = { "n", "v" } },
  {
    "<leader>lh",
    function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled()) end,
    desc = "Inlay hints (toggle)",
    mode = { "n", "v" }
  },
})
