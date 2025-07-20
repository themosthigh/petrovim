-- safely load which-key
local status_ok, wk = pcall(require, "which-key")
if not status_ok then
  print("which-key is not installed")
  return
end


-- Explorer (neo-tree)
wk.add({
  { "<leader>n", "<cmd>Neotree toggle<cr>", desc = "Explorer (toggle)" },
  { "<leader>e", "<cmd>Neotree focus<cr>",  desc = "Explorer (focus)" },
})

-- Dashboard (snacks)
wk.add({ "<leader>a", "<cmd>lua Snacks.dashboard()<cr>", desc = "Dashboard" })
