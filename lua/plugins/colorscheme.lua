return {
  { "rebelot/kanagawa.nvim" },
  { "NLKNguyen/papercolor-theme" },
  { "ellisonleao/gruvbox.nvim" },
  {
    "navarasu/onedark.nvim",
    -- priority = 1000, -- Ensure it loads before LazyVim sets the colorscheme
    -- config = function()
    --   require("onedark").setup({
    --     style = "warmer", -- Set the warmer variant here
    --     transparent = false,
    --     term_colors = true,
    --     ending_tildes = false,
    --     cmp_itemkind_reverse = false,
    --     toggle_style_key = nil,
    --     toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" },
    --     code_style = {
    --       comments = "italic",
    --       keywords = "none",
    --       functions = "none",
    --       strings = "none",
    --       variables = "none",
    --     },
    --     lualine = {
    --       transparent = false,
    --     },
    --     colors = {},
    --     highlights = {},
    --     diagnostics = {
    --       darker = true,
    --       undercurl = true,
    --       background = true,
    --     },
    --   })
    --   require("onedark").load() -- Apply the style
    -- end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
  },
}
