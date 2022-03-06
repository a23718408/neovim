lvim.plugins = {
  {
    "npxbr/glow.nvim",
    ft = { "markdown" },
    -- run = "yay -S glow"
  },
  {
    "simrat39/rust-tools.nvim",
    config = function()
      require("rust-tools").setup {
        tools = {
          autoSetHints = true,
          hover_with_actions = true,
          runnables = {
            use_telescope = true,
          },
        },
        server = {
          cmd = { vim.fn.stdpath "data" .. "/lsp_servers/rust/rust-analyzer" },
          on_attach = require("lvim.lsp").common_on_attach,
          on_init = require("lvim.lsp").common_on_init,
        },
      }
    end,
    ft = { "rust", "rs" },
  },
  {
    "tpope/vim-surround",
    keys = { "c", "d", "y" },
  },
  {
    "ray-x/lsp_signature.nvim",
    -- event = "BufRead",
    config = function()
      require("lsp_signature").setup {
        hint_prefix = "羽 ",
      }
    end,
  },
  {
    "Galooshi/vim-import-js",
  },
  {
    "akinsho/flutter-tools.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("flutter-tools").setup {
        widget_guides = {
          enabled = false,
        },
      }
    end,
  },
  {
    "filipdutescu/renamer.nvim",
    config = function()
      require("user.renamer").config()
    end,
    branch = "master",
  },
  {
    "MattesGroeger/vim-bookmarks",
    config = function()
      -- highlight BookmarkSign ctermbg=NONE ctermfg=160
      -- highlight BookmarkLine ctermbg=194 ctermfg=NONE
      vim.g.bookmark_sign = ""
      vim.g.bookmark_annotation_sign = "☰"
      vim.g.bookmark_no_default_key_mappings = 1
      vim.g.bookmark_auto_save = 0
      vim.g.bookmark_auto_close = 0
      vim.g.bookmark_manage_per_buffer = 0
      vim.g.bookmark_save_per_working_dir = 0
      -- vim.g.bookmark_highlight_lines = 1
      vim.g.bookmark_show_warning = 0
      vim.g.bookmark_center = 1
      vim.g.bookmark_location_list = 0
      vim.g.bookmark_disable_ctrlp = 1
      vim.g.bookmark_display_annotation = 0
      -- vim.g.bookmark_auto_save_file = '~/.config/lvim/bookmarks'
    end,
    commit = "a86f6387a5dabf0102b4cab433b414a29456f792",
  },
  {
    "tom-anders/telescope-vim-bookmarks.nvim",
  },
  {
    "windwp/nvim-spectre",
    event = "BufRead",
    config = function()
      require("user.spectre").config()
    end,
  },
  {
    "phaazon/hop.nvim",
    -- event = "BufRead",
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "f", ":HopChar2<cr>", { silent = true })
    end,
  },
  { "nvim-telescope/telescope-dap.nvim" },
  {
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup {}
    end,
  },
  { "rmehri01/onenord.nvim" },
  {
    "rcarriga/nvim-dap-ui",
    requires = { "mfussenegger/nvim-dap" },
    config = function()
      require("dapui").setup()
    end,
  },
  {
    "CRAG666/code_runner.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("code_runner").setup {
        filetype_path = vim.fn.stdpath "config" .. "/code_runner.json",
      }
    end,
  },
  -- {
  --   "JoosepAlviste/nvim-ts-context-commentstring",
  --   event = "BufRead",
  -- },
  {
    "theHamsta/nvim-dap-virtual-text",
    config = function()
      require("nvim-dap-virtual-text").setup()
    end,
  },
  {
    "p00f/nvim-ts-rainbow",
  },
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    ft = "markdown",
    config = function()
      vim.g.mkdp_auto_start = 1
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({ "*" }, {
        RGB = true, -- #RGB hex codes
        RRGGBB = true, -- #RRGGBB hex codes
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        rgb_fn = true, -- CSS rgb() and rgba() functions
        hsl_fn = true, -- CSS hsl() and hsla() functions
        css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
      })
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    -- event = "BufRead",
    setup = function()
      require("user.blankline").config()
    end,
  },
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("user.neoscroll").config()
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("user.autotag").config()
    end,
    -- event = "InsertEnter",
  },
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    config = require("user.outline").config(),
  },
  {
    "kevinhwang91/nvim-bqf",
    event = { "BufRead", "BufNew" },
    config = function()
      require("bqf").setup {
        auto_enable = true,
        preview = {
          win_height = 12,
          win_vheight = 12,
          delay_syntax = 80,
          border_chars = { "┃", "┃", "━", "━", "┏", "┓", "┗", "┛", "█" },
        },
        func_map = {
          vsplit = "",
          ptogglemode = "z,",
          stoggleup = "",
        },
        filter = {
          fzf = {
            action_for = { ["ctrl-s"] = "split" },
            extra_opts = { "--bind", "ctrl-o:toggle-all", "--prompt", "> " },
          },
        },
      }
    end,
  },
}
