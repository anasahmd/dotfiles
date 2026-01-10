return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    opts = {
      flavour = "macchiato",
      transparent_background = true,
      default_integrations = true,
      auto_integrations = true,

      custom_highlights = function(colors)
        return {
          NeoTreeNormal = { bg = "NONE" },
          NeoTreeNormalNC = { bg = "NONE" },
          NeoTreeEndOfBuffer = { bg = "NONE" }, -- Fixes the empty space at the bottom
          NeoTreeWinSeparator = { bg = "NONE", fg = colors.surface1 },
        }
      end,
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
