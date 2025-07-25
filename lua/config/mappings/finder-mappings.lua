-- safely load which-key
local wk_status_ok, wk = pcall(require, "which-key")
if not wk_status_ok then
  print("which-key is not installed")
  return
end

-- safely load snacks
local telescope_status_ok, t_builtin = pcall(require, "telescope.builtin")
if not telescope_status_ok then
  print("telescope is not installed")
  return
end

local P = t_builtin

wk.add {
  { "<leader>fa",  function() P.find_files({ hidden = true, ignored = true }) end, desc = "All Files", },
  { "<leader>ff",  function() P.find_files({ hidden = false }) end,                desc = "Find Files" },
  { "<leader>fr",  P.resume,                                                       desc = "Resume search" },
  -- { "<leader>fn",  P.notifications,                                                desc = "Notifications" },
  { "<leader>fw",  P.grep_string,                                                  desc = "Live Grep" },
  -- { "<leader>fz",  P.grep_buffers,                                                 desc = "Current Buffer" },
  { "<leader>fb",  P.buffers,                                                      desc = "Buffer list" },
  -- Other
  { "<leader>fs",  P.colorscheme,                                                  desc = "Colorschemes" },
  { "<leader>fh",  P.help_tags,                                                    desc = "Help Tags" },
  -- { "<leader>fd",  P.diagnostics_buffer,                                           desc = "Diagnostics (buffer)" },
  { "<leader>fd",  P.diagnostics,                                                  desc = "Diagnostics" },
  { "<leader>fc",  P.commands,                                                     desc = "Commands" },
  { "<leader>fm",  P.man_pages,                                                    desc = "Man Pages" },
  { "<leader>fk",  P.keymaps,                                                      desc = "Keymaps" },
  { "<leader>fe",  function() P.icons({ icon_sources = { "emoji" } }) end,         desc = "Emoji" },
  -- git stuff
  { "<leader>fgs", P.git_status,                                                   desc = "Git Status" },
  { "<leader>fgb", P.git_branches,                                                 desc = "Git Branches" },
  { "<leader>fgf", P.git_files,                                                    desc = "Git Files" },
  -- { "<leader>fgd", P.git_diffs,                                                    desc = "Git Diffs" },

  -- lsp stuff
  { "<leader>fld", P.lsp_definitions,                                              desc = "LSP definitions" },
  { "<leader>flt", P.lsp_type_definitions,                                         desc = "LSP type definitions" },
  { "<leader>fli", P.lsp_implementations,                                          desc = "LSP implementations" },
  { "<leader>flr", P.lsp_references,                                               desc = "LSP references" },
}
