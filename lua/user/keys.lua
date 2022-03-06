lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<cr>", "Projects" }
lvim.builtin.which_key.mappings["R"] = {
  name = "Replace",
  r = { "<cmd>lua require('spectre').open()<cr>", "Replace" },
  w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
  f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Replace Buffer" },
}
lvim.leader = "space"
-- add your own keymapping
-- unmap a default keymapping
-- lvim.keys.normal_mode["<C-Up>"] = ""
-- edit a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>"

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }
lvim.keys.visual_mode = {
  ["p"] = "pgvy",
}

lvim.keys.normal_mode = {
  -- Page down/up
  ["[d"] = "<PageUp>",
  ["]d"] = "<PageDown>",
  ["<C-w>h"] = "<C-h>",
  ["<C-w>j"] = "<C-j>",
  ["<C-w>k"] = "<C-k>",
  ["<C-w>l"] = "<C-l>",

  -- Navigate buffers
  ["<Tab>"] = ":bnext<CR>",
  ["<S-Tab>"] = ":bprevious<CR>",
  ["<F5>"] = ":lua require'dap'.continue()<cr>",
  ["<S-F5>"] = ":lua require'dap'.terminate()<cr>",
  ["<F9>"] = ":lua require'dap'.toggle_breakpoint()<cr>",
  ["<F10>"] = ":lua require'dap'.step_over()<cr>",
  ["<F6>"] = ':lua require("dapui").toggle()<cr>',
  ["r"] = ":MagmaEvaluateOperator<cr>",
}
lvim.keys.normal_mode["ma"] = "<cmd>BookmarkAnnotate<cr>"
lvim.keys.normal_mode["mc"] = "<cmd>BookmarkClear<cr>"
lvim.keys.normal_mode["mm"] = "<cmd>BookmarkToggle<cr>"
lvim.keys.normal_mode["mh"] = '<cmd>lua require("harpoon.mark").add_file()<cr>'
lvim.keys.normal_mode["mj"] = "<cmd>BookmarkNext<cr>"
lvim.keys.normal_mode["mk"] = "<cmd>BookmarkPrev<cr>"
lvim.keys.normal_mode["ms"] =
  "<cmd>lua require('telescope').extensions.vim_bookmarks.all({ hide_filename=false, prompt_title=\"bookmarks\", shorten_path=false })<cr>"
lvim.keys.normal_mode["mx"] = "<cmd>BookmarkClearAll<cr>"
lvim.keys.normal_mode["mu"] = '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>'

-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["x"] = { ":RunCode<CR>", "RunCode" }
lvim.builtin.which_key.mappings["o"] = { ":SymbolsOutline<cr>", "Outline" }

lvim.builtin.which_key.mappings["t"] = {
  name = "Diagnostics",
  t = { "<cmd>TroubleToggle<cr>", "trouble" },
  w = { "<cmd>TroubleToggle lsp_workspace_diagnostics<cr>", "workspace" },
  d = { "<cmd>TroubleToggle lsp_document_diagnostics<cr>", "document" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
  l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
}
lvim.builtin.which_key.mappings["F"] = {
  name = "Flutter",
  r = { "<cmd>FlutterRun<cr>", "FlutterRun" },
  q = { "<cmd>FlutterQuit<cr>", "FlutterQuit" },
  l = { "<cmd>FlutterReload<cr>", "FlutterReload" },
  o = { "<cmd>FlutterOutlineToggle<cr>", "FlutterOutlineToggle" },
  d = { "<cmd>FlutterDevices<cr>", "FlutterDevices" },
  L = { "<cmd>FlutterLspRestart<cr>", "FlutterLspRestart" },
  R = { "<cmd>FlutterRestart<cr>", "FlutterRestart" },
  e = { "<cmd>FlutterEmulators<cr>", "FlutterEmulators" },
}
