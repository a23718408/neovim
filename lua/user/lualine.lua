lvim.builtin.lualine.style = "lvim"
lvim.builtin.lualine.options = {
  icons_enabled = true,
  theme = "onenord",
  -- section_separators = { left = "  ", right = " " },
  -- component_separators = { left = "╲", right = "╱" },
  -- section_separators = {left = '', right = ''},
  -- component_separators = {left = '', right = ''},
  disabled_filetypes = {},
  always_divide_middle = true,
}
lvim.builtin.lualine.extensions = { "nvim-tree", "toggleterm" }
local components = require "lvim.core.lualine.components"
lvim.builtin.lualine.sections = {
  lualine_a = {
    function()
      return "   "
    end,
  },
  lualine_x = {
    components.diagnostics,
    components.lsp,
  },
  lualine_y = {
    {
      "filetype",
    },
  },
  lualine_z = {
    components.scrollbar,
  },
}
