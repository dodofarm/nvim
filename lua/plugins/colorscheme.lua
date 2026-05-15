return {
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      options = { transparent = true },
      groups = {
        all = {
          NormalFloat = { bg = "NONE" },
          FloatBorder = { bg = "NONE" },
          NormalNC = { bg = "NONE" },
          SignColumn = { bg = "NONE" },
          -- Snacks picker
          SnacksPickerNormal = { bg = "NONE" },
          SnacksPickerBorder = { bg = "NONE" },
          SnacksDashboard = { bg = "NONE" },
          -- Pmenu (autocomplete)
          Pmenu = { bg = "NONE" },
          PmenuSbar = { bg = "NONE" },
        },
      },
    },
  },

  -- {
  --   "xiyaowong/transparent.nvim",
  --   lazy = false, -- MUST be false or it won't apply in time
  --   opts = {
  --     extra_groups = {
  --       "NormalFloat", -- Snacks picker, Mason, Lazy, LspInfo
  --       "FloatBorder",
  --       "NormalNC",
  --       "TelescopeNormal",
  --       "TelescopeBorder",
  --       "NeoTreeNormal",
  --       "NeoTreeNormalNC",
  --       "SnacksPickerNormal",
  --       "SnacksPickerBorder",
  --       "SnacksDashboard",
  --       "Pmenu",
  --     },
  --     exclude_groups = {},
  --   },
  -- },
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "storm",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  -- 2. Tell LazyVim to use it as the active colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "carbonfox", -- or "nordfox", "duskfox", "carbonfox", etc.
    },
  },
} -- lazy
